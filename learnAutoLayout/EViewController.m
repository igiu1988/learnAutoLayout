//
//  EViewController.m
//  learnAutoLayout
//
//  Created by wangyang on 12/10/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "EViewController.h"

@implementation EViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self imageViewAutoLayout];
    
}
- (void)imageViewAutoLayout
{
    UIScrollView *scrollView;
    UIImageView *imageView;
    NSDictionary *viewsDictionary;
    
    // Create the scroll view and the image view.
    scrollView  = [[UIScrollView alloc] init];
    imageView = [[UIImageView alloc] init];
    
    // Add an image to the image view.
    [imageView setImage:[UIImage imageNamed:@"MyReallyBigImage"]];
    
    // Add the scroll view to our view.
    [self.view addSubview:scrollView];
    
    // Add the image view to the scroll view.
    [scrollView addSubview:imageView];
    
    // Set the translatesAutoresizingMaskIntoConstraints to NO so that the views autoresizing mask is not translated into auto layout constraints.
    scrollView.translatesAutoresizingMaskIntoConstraints  = NO;
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Set the constraints for the scroll view and the image view.
    viewsDictionary = NSDictionaryOfVariableBindings(scrollView, imageView);
    
    // scrollview 与 self.view 的关系
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[scrollView]|" options:0 metrics: 0 views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollView]|" options:0 metrics: 0 views:viewsDictionary]];
    
    // scrollview 与 imageView 的关系
    [scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[imageView]|" options:0 metrics: 0 views:viewsDictionary]];
    [scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[imageView]|" options:0 metrics: 0 views:viewsDictionary]];
}

@end
