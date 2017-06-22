//
//  ZXContentShowView.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ContentShowViewDelegate <NSObject>

- (void)contentShowViewClick:(NSInteger)tag;

@end

@interface ZXContentShowView : UIView

@property(nonatomic,assign)id<ContentShowViewDelegate> delegate;
//此View 的背景视图（框）
@property(nonatomic,strong)UIImageView *bgImgView;
// 内容图片视图, 接受外界图片
@property (nonatomic,strong) UIImageView *contentImgView;
// 框框头上的三横线, 立体效果
@property (nonatomic,strong) UIImageView *xianImgVIew;
// 全view透明按钮
@property (nonatomic,strong) UIButton *button;
// 透明蒙版
@property (nonatomic,strong) UIView *coverView;
// 蒙版标签
@property (nonatomic,strong) UILabel *titleLb;

@end
