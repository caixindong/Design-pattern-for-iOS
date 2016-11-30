//
//  CanvasViewController.h
//  工厂方法
//
//  Created by 蔡欣东 on 2016/11/30.
//  Copyright © 2016年 蔡欣东. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasViewGenerator.h"

@interface CanvasViewController : UIViewController

@property (nonatomic)CanvasView *canvasView;

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *) generator;

@end
