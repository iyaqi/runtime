//
//  NSObject+Swizzling.m
//  runtime详解
//
//  Created by iyaqi on 16/1/27.
//  Copyright © 2016年 iyaqi. All rights reserved.
//

#import "NSObject+Swizzling.h"
#import <objc/runtime.h>

@implementation NSObject (Swizzling)

+ (void)swizzleSelector:(SEL)originSelector withSwizzledSelector:(SEL)swizzledSelector
{
    Class class = [self class];
    Method originMethod = class_getInstanceMethod(class, originSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    BOOL notHaveMethod =  class_addMethod(class, originSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    
    if (notHaveMethod) {
        //如果没有方法，表明添加方法成功
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originMethod), method_getTypeEncoding(originMethod));
    }else{
        //如果有方法，直接替换
        method_exchangeImplementations(originMethod, swizzledMethod);
    }
}





@end
