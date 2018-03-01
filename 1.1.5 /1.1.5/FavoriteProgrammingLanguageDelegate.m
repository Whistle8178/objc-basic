//
//  FavoriteProgrammingLanguageDelegate.m
//  1.1.5
//
//  Created by 竹村鷹基 on 2018/03/01.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "FavoriteProgrammingLanguageDelegate.h"

@implementation FavoriteProgrammingLanguageDelegate

-(void)joinintern{
   
    if ([self.delegate respondsToSelector:@selector(canobjc)]){
    NSLog(@"joiintern");
    [self.delegate canobjc];
}
}
@end
