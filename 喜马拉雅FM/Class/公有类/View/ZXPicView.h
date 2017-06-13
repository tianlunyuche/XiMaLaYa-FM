//
//  ZXPicView.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  方形图片
 */
@interface ZXPicView : UIView
// 方图
@property (nonatomic,strong) UIImageView *coverView;
// 透明图层
@property (nonatomic,strong) UIImageView *bgView;
// 播放数
@property (nonatomic,strong) UIButton *playCountBtn;

@end
