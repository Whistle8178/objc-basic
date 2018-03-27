//
//  ViewController.h
//  2.1.8
//
//  Created by 竹村鷹基 on 2018/02/18.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *pickerViewCont;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIView *backgroundView;
- (IBAction)showBtn:(id)sender;
- (IBAction)hideBtn:(id)sender;

@end

