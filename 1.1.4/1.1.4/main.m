//
//  main.m
//  1.1.4
//
//  Created by 竹村鷹基 on 2018/02/06.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Person *personA = [[Person alloc]init];
        personA.name = @"竹村鷹基";
        personA.sex = @"君";
        personA.language = @"japanese";
        NSData  *dateA = [NSDate date];
        personA.age = @"24";
        personA.language = @"japanese";
        NSLog(@"%@%@は, %@が得意な%@歳です。",
              personA.name,
              personA. sex,
              personA.language,
              personA. age);
        
        Person *personB = [[Person alloc]init];
        
        [personB setName:@"郑嘉静"];
        [personB setSex:@"さん"];
        [personB setLanguage:@"chinese"];
        NSData *dateB = [NSDate date];
        [personB setAge:@"22"];
        NSLog(@"%@%@は,%@が得意な%@歳です。",
              [personB name],
              [personB sex],
              [personB language],
              [personB age]);
    }
    return 0;
}
