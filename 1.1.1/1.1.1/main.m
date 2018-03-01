//
//  main.m
//  1.1.1
//
//  Created by 竹村鷹基 on 2018/02/04.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//



#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
#pragma mark -  Life  Methods
    //BOOL値の出力
    BOOL YESNO = YES;
    NSLog(@"YESNO: %@",(YESNO == 0 ? @"YES":@"NO"));
    
    NSFileManager* manager = [NSFileManager defaultManager];
    //NSStringの出力
    NSString* path = [NSHomeDirectory() stringByAppendingPathComponent:@"huge"];
    BOOL rt = [manager fileExistsAtPath:path];
    if (rt) {
        
        NSLog(@"Ok");
        
    } else {
        
        NSLog(@"None");
    }
    
    //文字列の出力
    NSString *msg = @"thankyou";
    NSDate *now = [NSDate date];
    NSLog(@"%@ %@",msg,now);
    
    NSInteger price = 100;
    NSLog (@"お会計は%ld円になります。",(long)price);
    
    NSArray *nums = @[@16, @15, @5, @25, @78];
    
    NSLog(@"nums= %@" , nums);
    
    return 0;
}
