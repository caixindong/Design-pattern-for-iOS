//
//  Stoke.m
//  原型设计模式
//
//  Created by 蔡欣东 on 2016/11/28.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import "Stoke.h"

@interface Stoke (){
    NSMutableArray *_children;
}

@end

@implementation Stoke
@synthesize color = _color;
@synthesize size = _size;

- (instancetype)init {
    if (self = [super init]) {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (void)setLocation:(CGPoint)location {
    
}

- (CGPoint)location {
    if ([_children count] > 0) {
        return [(id<Mark>)[_children objectAtIndex:0] location];
    }
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index >= [_children count]) {
        return nil;
    }
    return [_children objectAtIndex:index];
    
}

- (id<Mark>)lastChild {
    return  [_children lastObject];
}

- (NSUInteger)count {
    return [_children count];
}

- (id)copyWithZone:(NSZone *)zone {
    Stoke *copy = [[[self class] allocWithZone:zone] init];
    [copy setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    [copy setSize:_size];
    for (id<Mark> child in _children) {
        id<Mark> childCopy = [child copy];
        [copy addMark:childCopy];
    }
    return copy;
}


@end
