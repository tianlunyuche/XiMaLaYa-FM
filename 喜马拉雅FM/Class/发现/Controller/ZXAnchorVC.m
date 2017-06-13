//
//  ZXAnchorVC.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXAnchorVC.h"
#import "ZXAnchorViewModel.h"
#import "ZXAnchorCell.h"
#import "ZXTitleView.h"  // 分组头视图

@interface ZXAnchorVC ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) ZXAnchorViewModel *anchorVM;

@end

@implementation ZXAnchorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.anchorVM getDataCompletionHandle:^(NSError *error) {
        [MBProgressHUD hideHUD];
        [self.tableView reloadData];
    }];
}

#pragma mark - UITableView代理协议
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.anchorVM.section;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZXAnchorCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ACell"];
    [cell.anchorView0.anchorBtn setImageForState:UIControlStateNormal withURL:[self.anchorVM coverURLForSection:indexPath.section Index:0] placeholderImage:[UIImage imageNamed:@"find_usercover"]];
    cell.anchorView0.nameLb.text = [self.anchorVM nameForSection:indexPath.section Index:0];
    [cell.anchorView1.anchorBtn setImageForState:UIControlStateNormal withURL:[self.anchorVM coverURLForSection:indexPath.section Index:1] placeholderImage:[UIImage imageNamed:@"find_usercover"]];
    cell.anchorView1.nameLb.text = [self.anchorVM nameForSection:indexPath.section Index:1];
    [cell.anchorView2.anchorBtn setImageForState:UIControlStateNormal withURL:[self.anchorVM coverURLForSection:indexPath.section Index:2] placeholderImage:[UIImage imageNamed:@"find_usercover"]];
    cell.anchorView2.nameLb.text = [self.anchorVM nameForSection:indexPath.section Index:2];
    
    return cell;
}

// 分组头
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [[ZXTitleView alloc] initWithTitle:[self.anchorVM mainTitleForSection:section] hasMore:1];
}
// 头高
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 35;
}
// 尾高
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ZXLog(@"didSelectRowAtIndexPath");
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

kRemoveCellSeparator

#pragma mark - VM,TableView懒加载
- (ZXAnchorViewModel *)anchorVM {
    if (!_anchorVM) {
        _anchorVM = [ZXAnchorViewModel new];
    }
    return _anchorVM;
}
- (UITableView *)tableView {
    if (!_tableView) {
        // 创建分组
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        [self.view addSubview:_tableView];
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            // 防止头部空出一块
            make.top.mas_equalTo(-35);
            make.bottom.left.right.mas_equalTo(0);
        }];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[ZXAnchorCell class] forCellReuseIdentifier:@"ACell"];
        // 因为cell只有一个无特殊, indexPath不需要
        _tableView.rowHeight = [self.anchorVM cellHeightForIndexPath:nil];
        // 去分割线
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        // 不能超
        _tableView.bounces = NO;
    }
    return _tableView;
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
