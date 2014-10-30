//
//  UIView+AddLine.m
//  learnAutoLayout
//
//  Created by wangyang on 10/28/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "UIView+AddLine.h"

@implementation UIView (AddLine)
- (void)addLineForEdge:(WYLineEdge)edge color:(UIColor *)color
{
    
    // TODO: 1. 学习使用autolayout来添加view
    // TODO: 2. 将这里使用autolayout来自动约束
    if (edge & 1){
        WYSeparatorLine *line = [WYSeparatorLine lineWithFrame:CGRectMake(0, 0, self.width, self.height) color:[UIColor redColor]];
        [self addSubview:line];
    }
    if (edge & 2){
        WYSeparatorLine *line = [WYSeparatorLine lineWithFrame:CGRectMake(0, 0, self.width, self.height) color:[UIColor redColor]];
        [self addSubview:line];

    }
    if (edge & 4){
        WYSeparatorLine *line = [WYSeparatorLine lineWithFrame:CGRectMake(0, 0, self.width, self.height) color:[UIColor redColor]];
        [self addSubview:line];

    }
    if (edge & 8) {
        WYSeparatorLine *line = [WYSeparatorLine lineWithFrame:CGRectMake(0, 0, self.width, self.height) color:[UIColor redColor]];
        [self addSubview:line];

    }

    
}

@end




@implementation WYSeparatorLine

#pragma mark - 通过IB设置line颜色

-(void)awakeFromNib {
    self.layer.borderWidth = (1.0 / [UIScreen mainScreen].scale) / 2;
    self.layer.borderColor = [self.backgroundColor CGColor];
    self.backgroundColor = [UIColor clearColor];
}



#pragma mark - 通过代码取得一条线
+ (UIView *)lineWithFrame:(CGRect)frame color:(UIColor *)color
{
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.layer.borderWidth = (1.0 / [UIScreen mainScreen].scale) / 2;
    view.layer.borderColor = [color CGColor];
    view.backgroundColor = [UIColor clearColor];
    
    return view;
}

@end
