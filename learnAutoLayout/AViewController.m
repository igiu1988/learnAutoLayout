//
//  ViewControllerA.m
//  learnAutoLayout
//
//  Created by wangyang on 11/5/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "AViewController.h"
#import "TableHeader.h"

@interface AViewController ()

@end

@implementation AViewController


/**
 *  示例添加两个header，并且header高度会自动计算
 */
- (void)viewDidLoad {
    [super viewDidLoad];


    TableHeader *header1 = [[NSBundle mainBundle] loadNibNamed:@"TableHeader" owner:nil options:nil][0];
    header1.contentLabel.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? I've been trying to set it up using a combination of Storyboard and code, but to no avail. Everyone recommends sizeToFit while setting lineBreakMode and numberOfLines. However, no matter if I put that code in viewDidLoad:, viewDidAppear:";
    [self.view addSubview:header1];
    
    
    [header1 mas_makeConstraints:^(MASConstraintMaker *make) {
        UIView *topLayoutGuide = (id)self.topLayoutGuide;
        make.top.equalTo(topLayoutGuide.mas_bottom);
        make.right.equalTo(self.view.mas_right);
        make.left.equalTo(self.view.mas_left);
    }];
    
    
    TableHeader *header2 = [[NSBundle mainBundle] loadNibNamed:@"TableHeader" owner:nil options:nil][0];
    header2.contentLabel.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? I've been trying to set it up using a combination of Storyboard and code, but to no avail.";
    [self.view addSubview:header2];
    
    
    [header2
     mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(header1.mas_bottom).with.offset(5);
        make.right.equalTo(self.view.mas_right);
        make.left.equalTo(self.view.mas_left);
    }];

    
    
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
