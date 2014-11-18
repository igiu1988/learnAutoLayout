//
//  UIView+LoadFromNib.h
//  learnAutoLayout
//
//  Created by wangyang on 11/18/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LoadFromNib)
+ (instancetype)loadFromNib;


+ (instancetype)loadFromNibAtNibIndex:(NSUInteger)index;
+ (NSArray *)loadNib;
@end
