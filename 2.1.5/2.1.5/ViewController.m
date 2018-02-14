//
//  ViewController.m
//  2.1.5
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
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(50, 50, 150, 50);
    [button setTitle:@"ボタン" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonWasTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button = button;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)buttonWasTapped:(UIButton *)button
{
    UIAlertController * ac =
    [UIAlertController alertControllerWithTitle:@"Title"
                                        message:@"Message"
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction * cancelAction =
    [UIAlertAction actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * action) {
                               
                               NSLog(@"Cancel");
                           }];
    UIAlertAction *  FacebookAction =
    [UIAlertAction actionWithTitle:@"Facebook"
                             style:UIAlertActionStyleDestructive
                           handler:^(UIAlertAction * action) {
                               
                               NSLog(@"Facebook");
                           }];
    UIAlertAction * TwitterAction =
    [UIAlertAction actionWithTitle:@"Twitter"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               
                               NSLog(@"Twitter");
                           }];
    UIAlertAction * LineAction =
    [UIAlertAction actionWithTitle:@"Line"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               
                               NSLog(@"Line");
                           }];
    [ac addAction:cancelAction];
    [ac addAction:FacebookAction];
    [ac addAction:TwitterAction];
    [ac addAction:LineAction];
    [self presentViewController:ac animated:YES completion:nil];
    
}
@end
