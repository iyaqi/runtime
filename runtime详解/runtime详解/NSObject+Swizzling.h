//
//  NSObject+Swizzling.h
//  runtime详解
//
//  Created by iyaqi on 16/1/27.
//  Copyright © 2016年 iyaqi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzling)
+ (void)swizzleSelector:(SEL)originSelector withSwizzledSelector:(SEL)swizzledSelector;
@end
