//
//  Person.h
//  1.1.4
//
//  Created by 竹村鷹基 on 2018/02/06.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

-(void)setName:(NSString *)name;
-(NSString *)name;
-(void)setSex:(NSString *)sex;
-(NSString *)sex;
-(void)setLanguage:(NSString *)language;
-(NSString *)language;
-(void)setAge:(NSDate *)age;
-(NSDate *)age;
@end
