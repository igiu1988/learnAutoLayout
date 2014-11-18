//
//  ViewControllerB.m
//  learnAutoLayout
//
//  Created by wangyang on 11/5/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (nonatomic, strong) UILabel *descriptionLabel;
@property (nonatomic, weak ) IBOutlet UILabel *label;
@property (nonatomic, weak ) IBOutlet UILabel *label1;
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // container 设置了左右约束和高约束
    // _laber 设置了四周约束，高250优先级约束，宽250优先级约束
    _label.preferredMaxLayoutWidth = _label.width;
    _label1.preferredMaxLayoutWidth = _label1.width;
    _label.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? ";
    _label1.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text?";
    
//    // 代码实现 高变化 
//    self.descriptionLabel = [[UILabel alloc] init];
//    self.descriptionLabel.numberOfLines = 0;
//    self.descriptionLabel.backgroundColor = [UIColor redColor];
//    self.descriptionLabel.lineBreakMode = NSLineBreakByWordWrapping;
//    [self.descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [self.view addSubview:self.descriptionLabel];
//    
//    // 重点就是优先级的运用
//    [self.descriptionLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
//    [self.descriptionLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
//    
//    NSArray* constrs = [NSLayoutConstraint constraintsWithVisualFormat:@"|-8-[_descriptionLabel]-8-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_descriptionLabel)];
//    [self.view addConstraints:constrs];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-180-[_descriptionLabel]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_descriptionLabel)]];
//    [self.descriptionLabel addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_descriptionLabel(220@300)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_descriptionLabel)]];
//    self.descriptionLabel.preferredMaxLayoutWidth = 200;
//    self.descriptionLabel.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? I've been trying to set it up using a combination of Storyboard and code, but to no avail. Everyone recommends sizeToFit while setting lineBreakMode and numberOfLines. However, no matter if I put that code in viewDidLoad:, viewDidAppear:, or viewDidLayoutSubviews I can't get it to work. Either I make the box too small for long text and it doesn't grow, or I make it too big and it doesn't shrink.";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
