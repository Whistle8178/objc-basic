//
//  main.m
//  1.1.2
//
//  Created by 竹村鷹基 on 2018/02/04.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//
#import <Foundation/Foundation.h>
int main(int argc, const char * argv[])
{
    NSArray *nums = @[@16, @15, @25, @54];
    NSLog(@"nums= %@",nums);
    
    NSDictionary *cours = @{@"A":@"水泳", @"B":@"バイク", @"C":@"ヨガ", @"D":@"サッカー"};
    NSLog(@"Aコース%@", cours[@"A"]);
    NSLog(@"Cコース%@", cours[@"C"]);
    NSLog(@"Dコース%@", cours[@"D"]);
    return 0;
}
