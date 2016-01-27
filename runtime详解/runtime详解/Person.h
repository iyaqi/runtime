//
//  Person.h
//  runtime详解
//
//  Created by iyaqi on 16/1/26.
//  Copyright © 2016年 iyaqi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(copy,nonatomic)NSString *name;
@property(assign,nonatomic)NSInteger age;
@property(assign,nonatomic)NSInteger weight;
@property(copy,nonatomic)NSString *identifier;
@end

