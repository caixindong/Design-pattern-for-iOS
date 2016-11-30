//
//  ClothCanvasViewGenerator.m
//  工厂方法
//
//  Created by 蔡欣东 on 2016/11/30.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"
#import "ClothCanvasView.h"

@implementation ClothCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[ClothCanvasView alloc] initWithFrame:frame];
}

@end
