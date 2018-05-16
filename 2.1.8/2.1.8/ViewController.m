//
//  ViewController.m
//  2.1.8
//
//  Created by 竹村鷹基 on 2018/02/18.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic,strong)NSArray *myDateArray;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.myDateArray = @[@"Sunday",
                         @"Monday",
                         @"Tuesday",
                         @"Wednesday",
                         @"Thursday",
                         @"Friday",
                         @"Monday"];
    
    self.pickerView.delegate = self;
    
    self.label.userInteractionEnabled = YES;
    self.label.tag = 100;
    
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger) pickerView: (UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger) component {
    return (self.myDateArray).count ;
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return _myDateArray[row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"select = %@",_myDateArray[row]);
    self.label.text = _myDateArray[row];
}
// ラベルタッチイベント
- (IBAction)labelTouch:(id)sender {
    
    // ピッカーと閉じるボタンが非表示の場合表示する
    if ((self.pickerView.hidden = YES) && (self.pickerHiddenButton.hidden = YES)) {
        self.pickerView.hidden = NO;
        self.toolbar.hidden = NO;
        self.pickerHiddenButton.hidden = NO;
    }
}

// タッチでピッカーとDoneボタンを非表示にする
- (IBAction)closePckerAndDoneButton:(id)sender {
    self.pickerView.hidden = YES;
    self.toolbar.hidden = YES;
    self.pickerHiddenButton.hidden = YES;
}

@end


