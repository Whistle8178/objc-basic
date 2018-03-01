//
//  ViewController.m
//  1.1.5
//
//  Created by 竹村鷹基 on 2018/03/01.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//


#import "ViewController.h"
#import "Account.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Account *ac = [Account new];
    [ac joinintern];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end

