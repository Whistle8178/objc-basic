//
//  ViewController.m
//  2.1.4
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
    self.alertController = [UIAlertController alertControllerWithTitle:@"確認"
                                                                   message:@"実行します"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction *action) {
                                                         NSLog(@"OK");
                                                     }];
    
    UIAlertAction *cancelButton = [UIAlertAction actionWithTitle:@"Cansel"
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction *action) {
                                                             
                                                             NSLog(@"NO");
                                                         }];
    
    [self.alertController addAction:cancelButton];
    [self.alertController addAction:okButton];
}
- (IBAction)confirmButton:(id)sender {
    
    [self presentViewController:self.alertController animated:YES completion:nil];
}
@end
