//
//  TableHeader.m
//  learnAutoLayout
//
//  Created by wangyang on 11/17/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "TableHeader.h"

@implementation TableHeader

- (void)fitToConent
{
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    CGFloat height = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}


@end
