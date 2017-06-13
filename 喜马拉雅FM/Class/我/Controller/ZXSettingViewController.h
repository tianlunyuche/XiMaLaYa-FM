//
//  ZXSettingViewController.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingViewController;
@protocol SettingViewControllerDelegate <NSObject>

- (void)settingViewControllerWillAppear:(SettingViewController *)settingVC;

@end

/**
 *  设置视图
 */
@interface ZXSettingViewController : UITableViewController

@property (nonatomic,weak) id<SettingViewControllerDelegate> delegate;
@end
