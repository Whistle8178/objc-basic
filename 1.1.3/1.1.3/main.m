//
//  main.m
//  1.1.3
//
//  Created by 竹村鷹基 on 2018/02/06.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    int yearOfBirth = 1991;
    const int heiseiGannen = 1989;
    // if文、if〜else文、if〜eles〜if文
    if (yearOfBirth >= heiseiGannen) {
        NSLog(@"平成以降に生まれました");
    }
    
    if (yearOfBirth > heiseiGannen){
        NSLog(@"平成以降に生まれました。");
    } else if (yearOfBirth == heiseiGannen){
        NSLog(@"平成元年に生まれました。");
    } else {
        NSLog(@"平成より前に生まれました。");
        
    }
    //for文、高速列挙
    int t = 0;
    for(int i = 0;i <= 10; i++){
        t += 2;
        NSLog(@"%d,t=%d",i,t);
        
    }
    NSArray *weekdays = @[@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Froday", @"Satrurday"];
    for(NSString *str in weekdays){
        NSLog(@"%@",str);
    }
    //switch文
    typedef NS_ENUM(NSUInteger,monthType){
        January = 1,
        February,
        March,
        April,
        May,
        June,
        July,
        August,
        September,
        October,
        November,
        December,
    };
    
    int month = 2;
    
    switch (month) {
        case 1:
            NSLog(@"睦月");
            break;
        case 2:
            NSLog(@"如月");
            break;
        case 3:
            NSLog(@"弥生");
            break;
        case 4:
            NSLog(@"卯月");
            break;
        case 5:
            NSLog(@"皐月");
            break;
        case 6:
            NSLog(@"水無月");
            break;
        case 7:
            NSLog(@"文月");
            break;
        case 8:
            NSLog(@"葉月");
            break;
        case 9:
            NSLog(@"長月");
            break;
        case 10:
            NSLog(@"神無月");
            break;
        case 11:
            NSLog(@"霜月");
            break;
        case 12:
            NSLog(@"師走");
            break;
        default:
            NSLog(@"月の値が正しくありません");
    }
    //三項演算子
    double ans, a, b;
    a=5;
    b=2;
    
    ans = (b > 0) ? a/b : a;
    NSLog(@"ans = %.lf", ans);
    
    return 0;
    
}
