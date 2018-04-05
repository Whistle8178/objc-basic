//
//  ViewController.m
//  2.1.5
//
//  Created by 竹村鷹基 on 2018/02/13.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIAlertController * alertController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.alertController =
    [UIAlertController alertControllerWithTitle:@"SNS選択"
                                        message:@"Chose"
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction * cancelAction =
    [UIAlertAction actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * action) {
                               
                               NSLog(@"Cancel");
                           }];
    UIAlertAction *  FacebookAction =
    [UIAlertAction actionWithTitle:@"Facebook"
                             style:UIAlertActionStyleDefault
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
    [self.alertController addAction: FacebookAction];
    [self.alertController addAction: TwitterAction];
    [self.alertController addAction: LineAction];
    [self.alertController addAction: cancelAction];
}

- (IBAction)snsButton:(id)sender {
    
    [self presentViewController:self.alertController animated:YES completion:nil];
}
@end
