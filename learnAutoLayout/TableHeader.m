//
//  TableHeader.m
//  learnAutoLayout
//
//  Created by wangyang on 11/17/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "TableHeader.h"
@interface TableHeader ()
{
    
}
@end

@implementation TableHeader


- (void)resize
{
    self.contentLabel.preferredMaxLayoutWidth = self.width - 20.0f;
    
    CGFloat height = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    
}


@end
