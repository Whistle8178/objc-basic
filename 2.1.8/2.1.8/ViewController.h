//
//  ViewController.h
//  2.1.8
//
//  Created by 竹村鷹基 on 2018/02/18.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController

//プロパティを定義
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *pickerHiddenButton;

@end

