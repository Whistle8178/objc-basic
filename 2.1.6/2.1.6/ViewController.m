//
//  ViewController.m
//  2.1.6
//
//  Created by 竹村鷹基 on 2018/02/15.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *UIlabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.webView.delegate = self;
    
    NSURL *url = [NSURL URLWithString:@"https://www.yahoo.co.jp"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest : request];
    
}

-(void)webViewStartLoad:(UIWebView*)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible= YES;
}
-(void)webViewFinishLoad:(UIWebView*)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}


-(void)webView:(UIWebView *)webVIew didFailLoadWithError:(nonnull NSError *)error{
    
    if (error.code == NSURLErrorNotConnectedToInternet) {
        self.UIlabel.text = @"Net work error";
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
