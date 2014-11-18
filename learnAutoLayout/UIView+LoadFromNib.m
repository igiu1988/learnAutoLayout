//
//  UIView+LoadFromNib.m
//  learnAutoLayout
//
//  Created by wangyang on 11/18/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "UIView+LoadFromNib.h"

@implementation UIView (LoadFromNib)
+ (instancetype)loadFromNib
{
    UIView *view = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil][0];
    return view;
}

+ (instancetype)loadFromNibAtNibIndex:(NSUInteger)index
{
    UIView *view = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil][index];
    return view;
}
+ (NSArray *)loadNib
{
    NSArray *array = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];
    return array;
}


@end
