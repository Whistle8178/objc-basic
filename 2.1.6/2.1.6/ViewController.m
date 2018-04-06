//
//  ViewController.m
//  2.1.6
//
//  Created by 竹村鷹基 on 2018/02/15.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// プロパティ宣言
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) UIAlertController *alertController;
// メソッド定義
-(void)createAleartController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createAleartController];
    // 変数にアクセスするURLを代入
    //NSURL *url = [NSURL URLWithString:@"https://www.yahoo.co.jp"];
    // httpにアクセスできるかチェックする
    NSURL *url = [NSURL URLWithString:@"http://www.metro.tokyo.jp"];
    
    //リクエスト作成
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //リクエストされた、URLを読み込み
    [self.webView loadRequest : request];
}


- (void)createAleartController {
    
    NSString *alertTitle = [NSBundle.mainBundle localizedStringForKey:@"alertTitle" value:nil table:@"Localizable"];
    
    NSString *alertMessege = [NSBundle.mainBundle localizedStringForKey:@"alertMessege" value:nil table:@"Localizable"];
    
    NSString *alertActiontitle = [NSBundle.mainBundle localizedStringForKey:@"alertActiontitle" value:nil table:@"Localizable"];
    
    self.alertController = [UIAlertController alertControllerWithTitle:alertTitle message:alertMessege preferredStyle:UIAlertControllerStyleAlert];
    
    // アラートボタンとそのアクションを設定
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:alertActiontitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        NSLog(@"通信エラーが発生しました。");
    }
];
    // アラートコントローラーにアラートをセット
    [self.alertController addAction: okButton];
    NSLog(@"アラートセット完了");
}

// ロード時にインジケータをまわす
-(void)webViewStartLoad:(UIWebView*)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible= YES;
}
// ロード完了で非表示
-(void)webViewFinishLoad:(UIWebView*)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}
// エラーの場合、エラーコードに応じてアラートを表示する（今回はオフラインの場合のみアラートを出す）
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
    // オフラインによるエラー場合のみアラートを出す
    if (error.code == NSURLErrorNotConnectedToInternet) {
        [self presentViewController:self.alertController animated:YES completion:nil];
    }
}

@end
