//
//  ViewController.m
//  2.1.7
//
//  Created by 竹村鷹基 on 2018/02/15.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak,nonatomic)IBOutlet UITextField *textField; ;
@end
@implementation ViewController
- (void)viewDidLoad; {
    [super viewDidLoad];
    _textField.delegate = self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing:YES];
    return NO;
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSMutableString *tmp = [_textField.text mutableCopy];
    [tmp replaceCharactersInRange:range withString:string];
    BOOL isLengthLimit = [tmp length] <=30;
    return isLengthLimit;
}

-(IBAction)bkgTapped:(id)dender{
    [self.view endEditing:YES];
}
@end
