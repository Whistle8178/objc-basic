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
        NSArray *nameList = @[@"竹村　鷹基", @"鈴木一郎",@"田中景子",@"高橋　花子",@"山下　達郎"];
        NSArray *sexList = @[@"male",@"male",@"female",@"female",@"male"];
        NSArray *languageList = @[@"chinese",@"japanese",@"english",@"japanese",@"japanese"];
        NSArray *ageList = @[@"24",@"30",@"58",@"22",@"16"];
        
        for (int i = 0; i < nameList.count; i++) {
            
            if ([sexList[i] isEqualToString :@"male"]) {
                NSLog(@"%@君は、%@が得意な%@歳です。",
                      nameList[i],languageList[i],ageList[i]);
            } else {
                NSLog(@"%@さんは、%@が得意な%@歳です。",
                      nameList[i],languageList[i],ageList[i]);
            }
        }
        return 0;
    }
    
}

