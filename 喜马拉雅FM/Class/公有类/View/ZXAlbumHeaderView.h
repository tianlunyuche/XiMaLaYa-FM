//
//  ZXAlbumHeaderView.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZXPicView.h"
#import "ZXIconNameView.h"
#import "ZXDescView.h"

// 为顶部左右按钮制定协议
@protocol AlbumHeaderViewDelegate <NSObject>

// 左按钮被点击
- (void)topLeftButtonDidClick;
// 右按钮被点击
- (void)topRightButtonDidClick;

@end

/**
 *  分类头部视图
 */
@interface ZXAlbumHeaderView : UIImageView
// 头部标题
@property (nonatomic,strong) UILabel *title;
// 头像旁边标题(与头部视图text相等)
@property (nonatomic,strong) UILabel *smallTitle;

// 背景图 和 方向图
@property (nonatomic,strong) ZXPicView *picView;

// 自定义头像按钮
@property (nonatomic,strong) ZXIconNameView *nameView;

// 自定义描述按钮
@property (nonatomic,strong) ZXDescView *descView;

/** 根据标签数组, 设置按钮标签 */
- (void)setupTagsBtnWithTagNames:(NSArray *)tagNames;


// 定义代理
@property (nonatomic,weak) id<AlbumHeaderViewDelegate> delegete;


@end
