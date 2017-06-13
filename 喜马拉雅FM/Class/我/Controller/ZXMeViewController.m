//
//  ZXMeViewController.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/25.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXMeViewController.h"

@interface ZXMeViewController ()

@end

@implementation ZXMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //不允许越界
//    self.tableView.bounds =NO;
    //没有竖直的 滚动条
    self.tableView.showsVerticalScrollIndicator =NO;
    
    self.navigationItem.backBarButtonItem.title =@"返回";
//    self.navigationController.navigationBarHidden =YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
 
    if (section ==0) {
        UIView *view =[[UIView alloc] init];
        UIButton *recordedBtn =[UIButton buttonWithType:UIButtonTypeCustom];
        [view addSubview:recordedBtn];
        [recordedBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(0);
            make.width.mas_equalTo(250);
            make.height.mas_equalTo(40);
        }];
        [recordedBtn setImage:[UIImage imageNamed:@"btn_record_n"] forState:UIControlStateNormal];
        [recordedBtn setImage:[UIImage imageNamed:@"btn_record_h"] forState:UIControlStateHighlighted];
        return view;
    }else{
    
        return nil;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return section ? 10:60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}




@end
