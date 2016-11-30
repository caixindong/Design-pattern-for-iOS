//
//  PaperCanvasView.m
//  工厂方法
//
//  Created by 蔡欣东 on 2016/11/30.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import "PaperCanvasView.h"

@implementation PaperCanvasView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIImage *image = [UIImage imageNamed:@"paper"];
        UIImageView *background = [[UIImageView alloc] initWithImage:image];
        [self addSubview:background];
    }
    return self;
}

@end
