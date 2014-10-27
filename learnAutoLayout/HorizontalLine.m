//
//  HorizontalLine.m
//  learnAutoLayout
//
//  Created by wangyang on 10/28/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "HorizontalLine.h"

@implementation HorizontalLine

-(void)awakeFromNib {
    self.layer.borderColor = [self.backgroundColor CGColor];
    self.layer.borderWidth = (1.0 / [UIScreen mainScreen].scale) / 2;
    
    self.backgroundColor = [UIColor clearColor];
    
//    [self.layer setShadowOffset:CGSizeMake(0, -1.0f/UIScreen.mainScreen.scale)];
//    [self.layer setShadowRadius:0];
//    
//    [self.layer setShadowColor:[UIColor blackColor].CGColor];
//    [self.layer setShadowOpacity:0.25f];
}

@end
