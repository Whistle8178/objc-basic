//
//  Person.m
//  1.1.4
//
//  Created by 竹村鷹基 on 2018/02/06.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "Person.h"
@interface Person ()

@end

@implementation Person

-(instancetype)initWithUserDate:(NSString*)name
                            age:(NSNumber*)age
                       language:(NSString*)language
                            sex:(NSString*)sex{
    
    self = [super init];
    if(self){
        self.name = name;
        self.age = age;
        self.language = language;
        self.sex = sex;
    }
    return self;
}
@end
