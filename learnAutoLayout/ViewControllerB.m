//
//  ViewControllerB.m
//  learnAutoLayout
//
//  Created by wangyang on 11/5/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "ViewControllerB.h"

@interface ViewControllerB ()
@property (nonatomic, strong) UILabel *descriptionLabel;

@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.descriptionLabel = [[UILabel alloc] init];
    self.descriptionLabel.numberOfLines = 0;
    self.descriptionLabel.backgroundColor = [UIColor redColor];
    self.descriptionLabel.lineBreakMode = NSLineBreakByWordWrapping;
    [self.descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:self.descriptionLabel];
    
    // 重点就是优先级的运用
    [self.descriptionLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    [self.descriptionLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    
    NSArray* constrs = [NSLayoutConstraint constraintsWithVisualFormat:@"|-8-[_descriptionLabel]-8-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_descriptionLabel)];
    [self.view addConstraints:constrs];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-28-[_descriptionLabel]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_descriptionLabel)]];
    [self.descriptionLabel addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_descriptionLabel(220@300)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_descriptionLabel)]];
    
    //    self.descriptionLabel.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text?";
    self.descriptionLabel.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? I've been trying to set it up using a combination of Storyboard and code, but to no avail. Everyone recommends sizeToFit while setting lineBreakMode and numberOfLines. However, no matter if I put that code in viewDidLoad:, viewDidAppear:, or viewDidLayoutSubviews I can't get it to work. Either I make the box too small for long text and it doesn't grow, or I make it too big and it doesn't shrink.";
    //    self.descriptionLabel.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? I've been trying to set it up using a combination of Storyboard and code, but to no avail. Everyone recommends sizeToFit while setting lineBreakMode and numberOfLines. However, no matter if I put that code in viewDidLoad:, viewDidAppear:, or viewDidLayoutSubviews I can't get it to work. Either I make the box too small for long text and it doesn't grow, or I make it too big and it doesn't shrink.How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? I've been trying to set it u";
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
