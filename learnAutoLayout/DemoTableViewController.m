//
//  DemoTableViewController.m
//  learnAutoLayout
//
//  Created by wangyang on 11/17/14.
//  Copyright (c) 2014 com.wy. All rights reserved.
//

#import "DemoTableViewController.h"
#import "TableHeader.h"

@interface DemoTableViewController ()

@end

@implementation DemoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TableHeader *header = [[NSBundle mainBundle] loadNibNamed:@"TableHeader" owner:nil options:nil][0];
    header.contentLabel.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? I've been trying to set it up using a combination of Storyboard and code, but to no avail. Everyone recommends sizeToFit while setting lineBreakMode and numberOfLines. However, no matter if I put that code in viewDidLoad:, viewDidAppear:";
    NSLog(@"table width: %f",self.tableView.width);
    
    [header setNeedsLayout];
    [header layoutIfNeeded];
    CGFloat height = [header systemLayoutSizeFittingSize:CGSizeMake(self.tableView.width, 0)].height;
    CGRect frame = header.frame;
    frame.size.height = height;
    header.frame = frame;
    
    self.tableView.tableHeaderView = header;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)headerChangeAction:(id)sender {
    TableHeader *header = (TableHeader *)self.tableView.tableHeaderView;
    
    header.contentLabel.text = @"How am I supposed to configure programmatically (and in which method) a UILabel whose height depends on its text? I've been trying to set it up using a combination of Storyboard and code, but to no avail. ";
    ////
    //    [header setNeedsLayout];
    //    [header layoutIfNeeded];
    
    CGFloat height = [header systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    CGRect frame = header.frame;
    frame.size.height = height;
    header.frame = frame;
    
    self.tableView.tableHeaderView = header;
}

@end
