//
//  ZXSoundViewController.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/25.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXSoundViewController.h"
#import "ZXAttentionVC.h"  // 关注
#import "ZXCollectVC.h"   // 收藏
#import "ZXHistoryVC.h"  // 历史

@interface ZXSoundViewController ()

@end

@implementation ZXSoundViewController

//创建一个单例
+ (instancetype)soundViewController{
    static ZXSoundViewController *downloadVC =nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        downloadVC =[[ZXSoundViewController alloc] initWithViewControllerClasses:[self ViewControllerClasses] andTheirTitles:@[@"关注",@"收藏",@"历史"]];
//        WMPageController的设置
        downloadVC.menuViewStyle =WMMenuViewStyleLine;
        downloadVC.menuBGColor =[UIColor whiteColor];
        //选中时颜色
        downloadVC.titleColorSelected =[UIColor redColor];
        //设置每个item 的宽
        downloadVC.itemsWidths =@[@(kWindowW/3),@(kWindowW/3),@(kWindowW/3)];
        downloadVC.progressHeight =3.5;
        downloadVC.menuHeight =45;
        downloadVC.viewFrame =CGRectMake(0, 20, kWindowW, kWindowW -20);
        
    });
    return downloadVC;
}

//存响应的控制器
+ (NSArray *)ViewControllerClasses{
    
    return @[[ZXAttentionVC class] ,[ZXCollectVC class], [ZXHistoryVC class]];
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
