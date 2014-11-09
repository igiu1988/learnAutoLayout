//
//  ViewController.m
//  learnAutoLayout
//
//  Created by wangyang on 10/27/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "FirstViewController.h"
#import "UIView+AddLine.h"
@interface FirstViewController ()
{
    __weak IBOutlet UILabel *label1;
    __weak IBOutlet UILabel *label2;
    
    __weak IBOutlet NSLayoutConstraint *lable1TopConstraint;
    __weak IBOutlet UIView *container;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 添加分隔线测试
    [container addLineForEdge:WYLineEdgeTop color:[UIColor redColor]];
    
    // view1 左右充满，距父view上部30，高度5不变
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    view1.backgroundColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:0.5];
    [container addSubview:view1];
    
    
    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:view1
                                                                   attribute:NSLayoutAttributeHeight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1
                                                                    constant:44];
    [view1 addConstraint:constraint4];
    
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:container attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:container attribute:NSLayoutAttributeRight multiplier:1 constant:-10];
    //    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:container attribute:NSLayoutAttributeTop multiplier:1 constant:44];
    NSLayoutConstraint *constraint5 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:container attribute:NSLayoutAttributeBottom multiplier:1 constant:-10];
    [container addConstraints:@[constraint1, constraint2, constraint5]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 这两个button 的action演示了autolayout在多view协同约束上的强大。只要改主要view的约束，其它view就会自动改变
- (IBAction)action1:(id)sender {
    lable1TopConstraint.constant = 40;
}
- (IBAction)action2:(id)sender {
    lable1TopConstraint.constant = 300;
}

@end
