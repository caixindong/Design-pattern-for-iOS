//
//  CanvasViewController.m
//  工厂方法
//
//  Created by 蔡欣东 on 2016/11/30.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import "CanvasViewController.h"

@interface CanvasViewController ()

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CanvasViewGenerator *defaultCanvasViewGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultCanvasViewGenerator];
}

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [_canvasView removeFromSuperview];
    CGRect frame = CGRectMake(0, 0, 320, 640);
    CanvasView *canvasView = [generator canvasViewWithFrame:frame];
    [self setCanvasView:canvasView];
    [self.view addSubview:_canvasView];
}



@end
