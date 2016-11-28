//
//  Dot.m
//  原型设计模式
//
//  Created by 蔡欣东 on 2016/11/28.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize location = _location;
@synthesize color = _color;
@synthesize size = _size;

- (id)copyWithZone:(NSZone *)zone {
    Dot *copy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    [copy setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    [copy setSize:_size];
    return copy;
}

@end
