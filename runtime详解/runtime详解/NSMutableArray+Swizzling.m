//
//  NSMutableArray+Swizzling.m
//  runtime详解
//
//  Created by iyaqi on 16/1/28.
//  Copyright © 2016年 iyaqi. All rights reserved.
//

#import "NSMutableArray+Swizzling.h"
#import "NSObject+Swizzling.h"
#import <objc/runtime.h>

@implementation NSMutableArray (Swizzling)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        [objc_getClass("__NSArrayM")  swizzleSelector:@selector(addObject:) withSwizzledSelector:NSSelectorFromString(@"dg_addObject:")];
        
        [self swizzleSelector:@selector(initWithObjects:count:) withSwizzledSelector:@selector(dg_initWithObjects:count:)];
    });
}


- (id)dg_addObject:(id)obj
{
    
    if (!obj) {
        NSLog(@"您添加的对象为nil");
        return nil;
    }
    return  [self dg_addObject:obj];
    
}

- (id)dg_initWithObjects:(NSArray *)array count:(NSInteger)count
{
    if (self.count == 0) {
        NSLog(@"this is a empty array");
        return nil;
    }
    return  [self dg_initWithObjects:array count:count];
    
}

@end
