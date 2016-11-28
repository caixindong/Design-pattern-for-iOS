//
//  Mark.h
//  原型设计模式
//
//  Created by 蔡欣东 on 2016/11/28.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol Mark <NSObject>

@property (nonatomic) UIColor *color;
@property (nonatomic) CGFloat size;
@property (nonatomic) CGPoint location;
@property (nonatomic,readonly) NSUInteger count;
@property (nonatomic,readonly) id<Mark> lastChild;

- (id)copy;
- (void)addMark:(id<Mark>) mark;
- (void)removeMark:(id<Mark>) mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger) index;

@end
