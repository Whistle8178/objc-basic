//
//  ViewController.m
//  2.1.4
//
//  Created by 竹村鷹基 on 2018/02/13.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(50, 50, 150, 50);
    [button setTitle:@"ボタン" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonWasTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button = button;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)buttonWasTapped:(UIButton *)button
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"確認"
                                                                             message:@"実行します"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK"
                                                        style:UIAlertActionStyleDefault
                                                      handler:^(UIAlertAction *action) {
                                                          [self yesButtonPushed];
                                                      }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cansel"
                                                        style:UIAlertActionStyleDefault
                                                      handler:^(UIAlertAction *action) {
                                                          
                                                          [self noButtonPushed];
                                                      }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}
- (void)yesButtonPushed {
    NSLog(@"Ok");
}
- (void)noButtonPushed {
    NSLog(@"Cansel");
}

@end
