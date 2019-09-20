//
//  Person.h
//  1.1.4
//
//  Created by 竹村鷹基 on 2018/02/06.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSNumber *age;
@property NSString *language;
@property NSString *sex;

-(instancetype)initWithUserDate:(NSString*)name
                            age:(NSNumber*)age
                       language:(NSString*)language
                            sex:(NSString*)sex;
@end
