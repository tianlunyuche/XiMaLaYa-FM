//
//  ZXDownloadViewController.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/25.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXDownloadViewController.h"
#import "ZXAlbumVC.h"
#import "ZXSoundVC.h"
#import "ZXDownloadingVC.h"


@interface ZXDownloadViewController ()

@end

@implementation ZXDownloadViewController

// 创建一个单例
+ (instancetype)downloadViewController {
    static ZXDownloadViewController *downloadVC = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        downloadVC = [[ZXDownloadViewController alloc] initWithViewControllerClasses:[self ViewControllerClasses] andTheirTitles:@[@"专辑",@"声音",@"下载中"]];
        //        WMPageController的设置
        downloadVC.menuViewStyle = WMMenuViewStyleLine;
        // 设置背景色
        downloadVC.menuBGColor = [UIColor whiteColor];
        // 选中时颜色
        downloadVC.titleColorSelected = [UIColor redColor];
        // 设置每个item的宽
        downloadVC.itemsWidths = @[@(kWindowW/3),@(kWindowW/3),@(kWindowW/3)];
        downloadVC.progressHeight = 3.5;
        downloadVC.menuHeight = 45;
        downloadVC.viewFrame = CGRectMake(0, 20, kWindowW, kWindowH-20);
    });
    return downloadVC;
}

// 存响应的控制器
+ (NSArray *)ViewControllerClasses {
    return @[[ZXAlbumVC  class],[ZXSoundVC class], [ZXDownloadingVC class]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
