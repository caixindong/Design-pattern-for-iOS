//
//  CanvasViewGenerator.h
//  工厂方法
//
//  Created by 蔡欣东 on 2016/11/30.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CanvasView.h"
@interface CanvasViewGenerator : NSObject

- (CanvasView *)canvasViewWithFrame:(CGRect) frame;

@end
