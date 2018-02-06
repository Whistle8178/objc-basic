//
//  Person.m
//  1.1.4
//
//  Created by 竹村鷹基 on 2018/02/06.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    NSString *_name;
    NSString *_sex;
    NSString *_language;
    NSData *_age;
    
}
-(void)setName:(NSString *)aName
{
    _name = aName;
}
-(NSString *)name
{
    return _name;
}

-(void)setSex:(NSString *)aSex
{
    _sex = aSex;
}
-(NSString *)sex
{
    return _sex;
}
-(void)setLanguage:(NSString *)aLanguage
{
    _language = aLanguage;
}
-(NSString *)language
{
    return _language;
    
}
-(void)setAge:(NSData *)aAge
{
    _age = aAge;
}
-(NSData *)age
{
    return _age;
}

@end
