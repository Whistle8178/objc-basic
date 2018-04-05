//
//  ViewController.m
//  2.1.3
//
//  Created by 竹村鷹基 on 2018/02/13.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *imageList;
@property(weak,nonatomic)IBOutlet UIImageView *iamgeView;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.imageList = @[@"Image" , @"Image-1" , @"Image-2" , @"Image-3" , @"Image-4"];
}
- (IBAction)chengeBackground:(id)sender
{
    NSInteger rNum = arc4random() % [self.imageList count];
    self.iamgeView.image= [UIImage imageNamed: self.imageList[rNum]];
}
@end
