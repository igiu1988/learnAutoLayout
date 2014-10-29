//
//  UIView+AddLine.h
//  learnAutoLayout
//
//  Created by wangyang on 10/28/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, WYLineEdge) {
    WYLineEdgeNone   = 0,
    WYLineEdgeTop    = 1 << 0,
    WYLineEdgeLeft   = 1 << 1,
    WYLineEdgeBottom = 1 << 2,
    WYLineEdgeRight  = 1 << 3,
    WYLineEdgeAll    = WYLineEdgeTop | WYLineEdgeLeft | WYLineEdgeBottom | WYLineEdgeRight
} NS_ENUM_AVAILABLE_IOS(7_0);


@interface UIView (AddLine)


/**
 *  为view添加分隔线。每一个分隔线是单独的一个View，并且为这些view设置了autolayout，所以你view无论怎么变化都会跟随变动
 *
 *  @param edge  边框的颜色，可以同时设置多个加框
 *  @param color 颜色
 */
- (void)addLineForEdge:(WYLineEdge)edge color:(UIColor *)color;
@end


/**
 *  只是返回一条分隔线
 
    @note 支持IB和code两种方式
 */
@interface WYSeparatorLine : UIView

+ (WYSeparatorLine *)lineWithFrame:(CGRect)frame color:(UIColor *)color;
@end
