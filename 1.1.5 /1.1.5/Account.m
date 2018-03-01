//
//  Account.m
//  1.1.5
//
//  Created by 竹村鷹基 on 2018/03/01.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "Account.h"
#import "FavoriteProgrammingLanguageDelegate.h"

@interface Account () <FavoriteProgrammingLanguageDelegate>
@end

@implementation Account

- (void)joinintern
{
    FavoriteProgrammingLanguageDelegate *favoriteProgrammingLanguageDelegate = [FavoriteProgrammingLanguageDelegate new];
    favoriteProgrammingLanguageDelegate.delegate = self;
    [favoriteProgrammingLanguageDelegate joinintern];
    
}
-(void)canobjc{
    NSLog(@"canobjc");
}

@end
