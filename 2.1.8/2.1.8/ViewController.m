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
    
    self.backgroundView.userInteractionEnabled = YES;
    self.backgroundView.tag = 101;
    self.pickerViewCont.hidden =YES;
    
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}


- (NSInteger) pickerView: (UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger) component {
    return [self.myDateArray count];
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [_myDateArray objectAtIndex:row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"select = %@",_myDateArray[row]);
    self.label.text = _myDateArray[row];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    if ( touch.view.tag == self.label.tag ) {
        [self showBtn:self.label];
    } else if (touch.view.tag == self.backgroundView.tag) {
        [self hideBtn:self.backgroundView];
    }
}

- (IBAction)showBtn:(id)sender {
    self.pickerViewCont.hidden =NO;
    
    
}

- (IBAction)hideBtn:(id)sender {
    self.pickerViewCont.hidden =YES;
    
}
@end


