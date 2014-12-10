//
//  ViewControllerC.m
//  learnAutoLayout
//
//  Created by wangyang on 11/6/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "CViewController.h"
#import "Masonry.h"
#import "MASExampleScrollView.h"

@interface CViewController ()
{
//    __weak IBOutlet UIScrollView *scrollView;
}
@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIScrollView *scrollView = [UIScrollView new];
    [self.view addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);

    }];
    
    // 用来 autolayout content size 的 placeHolder view
    // 由于placeHolderView与 scroll view 的约束是
    UIView *placeHolderView = [UIView new];
    placeHolderView.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:placeHolderView];
    [placeHolderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView);
    }];
    
    // 下面三个才是scroll view 里真正需要显示的 sub view。
    // 所有的 sub view 与 placeHolderView 发生约束关系，placeHolderView会自适应大小;
    // scroll view 根据placeHolderView 的大小情况自动决定合适的 contentSize
    
    // 一个小 lable
    UILabel *lable1 = [UILabel new];
    lable1.text = @"1";
    [placeHolderView addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(placeHolderView.mas_top).offset(0);
        make.left.equalTo(placeHolderView.mas_left).offset(0);
    }];
    
    // 一个很高的 label
    UILabel *lable2 = [UILabel new];
    lable2.backgroundColor = [UIColor yellowColor];
    [placeHolderView addSubview:lable2];
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lable1.mas_bottom).offset(0);
        make.left.equalTo(placeHolderView.mas_left).offset(0);
        make.height.equalTo(@800);
        make.width.equalTo(@100);
    }];
    
    // 一个小 label
    UILabel *lable3 = [UILabel new];
    lable3.text = @"2";
    [placeHolderView addSubview:lable3];
    [lable3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lable2.mas_bottom).offset(0);
        make.bottom.equalTo(placeHolderView.mas_bottom).offset(0);
        make.left.equalTo(placeHolderView.mas_left).offset(0);
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
