//
//  ViewController.m
//  2.1.1
//
//  Created by 竹村鷹基 on 2018/02/08.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *language;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.language.text = NSLocalizedString(@"Obj-C講座をスタートしました", comment: "");
}

@end
