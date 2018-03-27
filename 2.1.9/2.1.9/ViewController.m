//
//  ViewController.m
//  2.1.9
//
//  Created by 竹村鷹基 on 2018/02/16.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.userInteractionEnabled = YES;
    self.label.tag = 100;
    
    self.backgroundView.userInteractionEnabled = YES;
    self.backgroundView.tag = 101;
    self.pickerViewCont.hidden = YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches]anyObject];
    if ( touch.view.tag == self.label.tag ){
        [self showBtn:self.label];
    } else if (touch.view.tag == self.backgroundView.tag) {
        [self hideBtn:self.backgroundView];
        
    }
}
- (IBAction)showBtn:(id)sender {
    self.pickerViewCont.hidden =NO;
    
}
- (IBAction)hideBtn:(UIBarButtonItem *)sender {
    self.pickerViewCont.hidden =YES;
    
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    df.dateFormat = @"yyyy/MM/dd HH:mm";
    
    self.label.text = [NSString stringWithFormat:@"%@", [df stringFromDate:self.datePicker.date]];
}

@end

