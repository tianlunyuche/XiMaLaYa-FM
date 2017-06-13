//
//  ZXCategoryVC.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXCategoryVC.h"
#import "ZXCategoryViewModel.h"
#import "ZXCategorySpecialCell.h"
#import "ZXCategoryCommonCell.h"

@interface ZXCategoryVC ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)ZXCategoryViewModel *categoryVM;

//记录0行cell高度
@property(nonatomic,assign)CGFloat zeroCellHight;

@end

@implementation ZXCategoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [MBProgressHUD showMessage:@"正在努力为您加载..."];
    [self.categoryVM getDataCompletionHandle:^(NSError *error) {
        [MBProgressHUD hideHUD];
        [self.tableView reloadData];
    }];
}

#pragma mark - UITableView代理
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.categoryVM.listsCount >5 ? (self.categoryVM.listsCount -5)/6 +1 :0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return section ? 3 : 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    if (indexPath.section ==0) {
        ZXCategorySpecialCell *cell =[tableView dequeueReusableCellWithIdentifier:@"SCell"];
        //取Cell 的高度
        UIImage *image =[UIImage imageNamed:@"cell_bg_noData_6"];
        self.zeroCellHight =cell.cellHeight;
        [cell.icon0 setImageWithURL:[self.categoryVM coverURLForIndex:0] placeholderImage:image];
        [cell.icon1 setImageWithURL:[self.categoryVM coverURLForIndex:1] placeholderImage:image];
        [cell.icon2 setImageWithURL:[self.categoryVM coverURLForIndex:2] placeholderImage:image];
        [cell.icon3 setImageWithURL:[self.categoryVM coverURLForIndex:3] placeholderImage:image];
        [cell.icon4 setImageWithURL:[self.categoryVM coverURLForIndex:4] placeholderImage:image];
        return cell;
    }else{
        ZXCategoryCommonCell *cell =[tableView dequeueReusableCellWithIdentifier:@"CCell"];
        // 三排两列排布规律
        UIImage *image7 =[UIImage imageNamed:@"cell_bg_noData_7"];
        NSInteger index = indexPath.section * 6 + indexPath.row * 2;
        [cell.btn1.icon setImageWithURL:[self.categoryVM coverURLForIndex:(index - 1)] placeholderImage:image7];
        [cell.btn2.icon setImageWithURL:[self.categoryVM coverURLForIndex:index] placeholderImage:image7];
        cell.btn1.categoryLb.text =[self.categoryVM titleForIndex:(index -1)];
        cell.btn2.categoryLb.text =[self.categoryVM titleForIndex:index];
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return indexPath.section ? 44 : self.zeroCellHight;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return section ? 5 : 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

#pragma mark - 懒加载
- (ZXCategoryViewModel *)categoryVM {
    if (!_categoryVM) {
        _categoryVM = [ZXCategoryViewModel new];
    }
    return _categoryVM;
}
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        [self.view addSubview:_tableView];
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            // 防止头部空出一块(因为无头视图)
            make.top.mas_equalTo(-35);
            make.bottom.left.right.mas_equalTo(0);
        }];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[ZXCategorySpecialCell class] forCellReuseIdentifier:@"SCell"];
        [_tableView registerClass:[ZXCategoryCommonCell class] forCellReuseIdentifier:@"CCell"];
        // 禁止超出上下拉
        _tableView.bounces = NO;
    }
    return _tableView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
