//
//  ZXPlayView.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/25.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PlayViewDelegate <NSObject>

//传入按钮的selected 属性
- (void)playButtonDidClick:(BOOL)selected;

@end

@interface ZXPlayView : UIView

@property(nonatomic,strong) UIImageView *circleIV;
@property(nonatomic,strong) UIImageView *contentIV;
@property(nonatomic,strong) UIButton *playButton;
@property(nonatomic,weak) id<PlayViewDelegate> delegate;

@end
