//
//  ZXFindViewController.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/25.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXFindViewController.h"
#import "ZXHomePageVC.h"
#import "ZXCategoryVC.h"
#import "ZXLiveVC.h"
#import "ZXRankingVC.h"
#import "ZXAnchorVC.h"

@interface ZXFindViewController ()

@end

@implementation ZXFindViewController


+ (UINavigationController *)defaultFindUINavigationController{
    static UINavigationController *navi =nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ZXFindViewController *findVC =[[ZXFindViewController alloc] initWithViewControllerClasses:[self ViewControllerClasses] andTheirTitles:@[@"推荐",@"分类",@"直播",@"榜单",@"主播",@"电台",@"相声",@"BBC",@"娱乐"]];
        //        WMPageController的设置
        findVC.menuViewStyle = WMMenuViewStyleLine;
        //选中时颜色
        findVC.titleColorSelected =[UIColor blueColor];
        findVC.progressColor = [UIColor blueColor];
        findVC.progressHeight = 3.5;
        navi = [[UINavigationController alloc] initWithRootViewController:findVC];
    });
    return navi;
}

// 存响应的控制器
+ (NSArray *)ViewControllerClasses {
    return @[[ZXHomePageVC class],[ZXCategoryVC class], [ZXLiveVC class], [ZXRankingVC class], [ZXAnchorVC class],[ZXHomePageVC class],[ZXHomePageVC class],[ZXHomePageVC class],[ZXHomePageVC class]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    ZXLog(@"%@",NSStringFromCGPoint(self.scrollView.contentOffset));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
