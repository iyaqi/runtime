//
//  People.m
//  runtime详解
//
//  Created by iyaqi on 16/1/26.
//  Copyright © 2016年 iyaqi. All rights reserved.
//

#import "People.h"

@implementation People

- (void)setIdentifier:(NSString*)str
{
    NSLog(@"This is a forward method:%@",str);
}

- (NSInteger)weight
{
    return 666;
}
@end
