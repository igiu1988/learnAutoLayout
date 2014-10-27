//
//  ViewController.m
//  learnAutoLayout
//
//  Created by wangyang on 10/27/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UILabel *label1;
    __weak IBOutlet UILabel *label2;
    
    __weak IBOutlet NSLayoutConstraint *lable1TopConstraint;
    __weak IBOutlet UIView *container;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [container.layer setShadowOffset:CGSizeMake(0, 1.0f/UIScreen.mainScreen.scale/2)];
    [container.layer setShadowRadius:0];

    [container.layer setShadowColor:[UIColor blackColor].CGColor];
    [container.layer setShadowOpacity:0.25f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)action1:(id)sender {
    lable1TopConstraint.constant = 40;
}
- (IBAction)action2:(id)sender {
    lable1TopConstraint.constant = 300;
}

@end
