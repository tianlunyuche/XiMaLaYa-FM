//
//  ZXTabBarController.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/25.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXTabBarController.h"
#import "ZXMeViewController.h"
#import "ZXDownloadViewController.h"
#import "ZXFindViewController.h"
#import "ZXSoundViewController.h"

@interface ZXTabBarController ()

@end

@implementation ZXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //TabBarController绑定, 配置各个控制器
    // findNavi是套有导航的
    UINavigationController *findNavi =[ZXFindViewController defaultFindUINavigationController];
    [self setupChildController:findNavi imageName:@"tabbar_find_n" selectedImage:@"tabbar_find_h"];
    
    ZXSoundViewController *soundVC =[ZXSoundViewController soundViewController];
    [self setupChildController:soundVC imageName:@"tabbar_sound_n" selectedImage:@"tabbar_sound_h"];
    
    // 只占用空间
    UIViewController *vc = [UIViewController new];
    [self setupChildController:vc  imageName:nil selectedImage:nil];
    
    ZXDownloadViewController *downloadVC = [ZXDownloadViewController downloadViewController];
    [self setupChildController:downloadVC imageName:@"tabbar_download_n" selectedImage:@"tabbar_download_h"];
    
    ZXMeViewController *meVC =[kStoryboard(@"MeSetting") instantiateViewControllerWithIdentifier:@"Me"];
    [self setupChildController:meVC imageName:@"tabbar_me_n" selectedImage:@"tabbar_me_h"];
    
    //设置tabar 的背景图
    self.tabBar.backgroundImage =[UIImage imageNamed:@"tabbar_bg"];
}

/**  绑定各个控制器, 顺便设置属性 */
- (void)setupChildController:(UIViewController *)vc imageName:(NSString *)imgName selectedImage:(NSString *)selectedImgName {
    
    //设置图片间距
    vc.tabBarItem.imageInsets =UIEdgeInsetsMake(5, 0, -5, 0);
    vc.tabBarItem.image =[UIImage imageNamed:imgName];
    /**设置图片 不渲染
    UIImageRenderingModeAutomatic        // 根据图片的使用环境和所处的绘图上下文自动调整渲染模式(默认属性)。
    UIImageRenderingModeAlwaysOriginal   // 始终绘制图片原始状态，设置Tint Color属性无效。
    UIImageRenderingModeAlwaysTemplate   // 始终根据Tint Color绘制图片（颜色）显示，忽略图片的颜色信息（也就是图片原本的东西是不显示的）。
    **/
    UIImage *image =[[UIImage imageNamed:selectedImgName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vc.tabBarItem.selectedImage =image;
    [self addChildViewController:vc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
