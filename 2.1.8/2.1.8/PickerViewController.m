//
//  PickerViewController.m
//  2.1.8
//
//  Created by 竹村鷹基 on 2018/02/19.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "PickerViewController.h"

@implementation PickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // ピッカーを表示
    UIPickerView *piv = [[UIPickerView alloc] init];
    piv.delegate = self;    // デリゲートを自分自身に設定
    piv.dataSource = self;  // データソースを自分自身に設定
    piv.showsSelectionIndicator = YES;  // 選択中の行に目印を付ける
    [piv setFrame:CGRectMake(0, 0, 300, 220)];
    [self.view addSubview:piv];
}


// 列数
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView
{
    return 1;
}

// 行数
- (NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 10;
}

// 行の内容
-(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    // 行インデックス番号を返す
    return [NSString stringWithFormat:@"%ld", (long)row];
}

// 選択された場合に呼ばれる
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"row = %ld", (long)row);
}


@end

