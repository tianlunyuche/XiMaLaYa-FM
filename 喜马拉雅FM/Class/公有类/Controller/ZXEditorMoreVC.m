//
//  ZXEditorMoreVC.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXEditorMoreVC.h"
#import "ZXEditorMoreViewModel.h"
#import "ZXEditorCell.h"

@interface ZXEditorMoreVC ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)ZXEditorMoreViewModel  *editorVM;

@end

@implementation ZXEditorMoreVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // 启动开启上拉刷新
    [self.tableView.mj_header beginRefreshing];
}

#pragma mark - UITableView代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.editorVM.rowNumber;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZXEditorCell *cell =[tableView dequeueReusableCellWithIdentifier:@"ECell"];
    [cell.coverBtn setImageForState:UIControlStateNormal withURL:[self.editorVM coverURLForRow:indexPath.row] placeholderImage:[UIImage imageNamed:@"find_albumcell_cover_bg"]];
    
    cell.titleLb.text =[self.editorVM titleForRow:indexPath.row];
    cell.introLb.text =[self.editorVM introForRow:indexPath.row];
    cell.playsLb.text = [self.editorVM playsForRow:indexPath.row];
    cell.tracksLb.text = [self.editorVM tracksForRow:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


#pragma mark - VM,tableView懒加载
- (ZXEditorMoreViewModel *)editorVM {
    if (!_editorVM) {
        _editorVM = [ZXEditorMoreViewModel new];
    }
    return _editorVM;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        [self.view addSubview:_tableView];
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [_tableView registerClass:[ZXEditorCell class] forCellReuseIdentifier:@"ECell"];
        // 上拉刷新
        _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            [self.editorVM refreshDataCompletionHandle:^(NSError *error) {
                [_tableView.mj_header endRefreshing];
                [_tableView reloadData];
            }];
        }];
        
        // 下拉加载数据
        _tableView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
            [self.editorVM getMoreDataCompletionHandle:^(NSError *error) {
                [_tableView.mj_footer endRefreshing];
                [_tableView reloadData];
            }];
        }];
        
        _tableView.rowHeight = 70;
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
