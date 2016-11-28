//
//  Vertex.m
//  原型设计模式
//
//  Created by 蔡欣东 on 2016/11/28.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
@synthesize location = _location;

- (instancetype)initWithLocation:(CGPoint)location {
    if (self = [super init]) {
        [self setLocation:location];
    }
    return self;
}

- (void)setColor:(UIColor *)color {

}

- (UIColor *)color {
    return nil;
}

- (void)setSize:(CGFloat)size {
    
}

-(CGFloat)size {
    return 0.0;
}

- (void)addMark:(id<Mark>)mark {
    
}

- (void)removeMark:(id<Mark>)mark {
    
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}

- (id<Mark>)lastChild {
    return nil;
}

- (NSUInteger)count {
    return 0;
}

-(id)copyWithZone:(NSZone *)zone {
    Vertex *copy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    return copy;
}


@end
