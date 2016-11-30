//
//  PaperCanvasViewGenerator.m
//  工厂方法
//
//  Created by 蔡欣东 on 2016/11/30.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"
#import "PaperCanvasView.h"
@implementation PaperCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[PaperCanvasView alloc] initWithFrame:frame];
}

@end
