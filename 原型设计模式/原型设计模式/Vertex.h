//
//  Vertex.h
//  原型设计模式
//
//  Created by 蔡欣东 on 2016/11/28.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Vertex : NSObject<Mark,NSCopying>

- (instancetype)initWithLocation:(CGPoint) location;

@end
