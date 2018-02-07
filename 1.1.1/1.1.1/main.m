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
    BOOL isDone = YES;
    if(isDone){
        NSLog(@"Ok");
    }else{
        NSLog(@"None");
    }
    
    NSString *msg = @"thankyou";
    
    NSDate *now = [NSDate date];
    NSLog(@"%@ %@",msg,now);
    
    NSInteger price = 100;
    NSLog (@"お会計は%ld円になります。",(long)price);
    
    NSArray *nums = @[@16, @15, @5, @25, @78];
    
    NSLog(@"nums= %@" , nums);
    
    return 0;
}
