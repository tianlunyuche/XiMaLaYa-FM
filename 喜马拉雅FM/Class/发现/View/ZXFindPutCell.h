//
//  ZXFindPutCell.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZXContentShowView.h"
/**
 *  自定义三个按钮框图片, 高度150合适
 */
@interface ZXFindPutCell : UITableViewCell

/** 图片上显示透明title标签 */
@property (nonatomic,strong) NSString *title;

/**  跳转按钮0 */
@property (nonatomic,strong) ZXContentShowView *clickBtn0;
/**  跳转按钮1 */
@property (nonatomic,strong) ZXContentShowView *clickBtn1;
/**  跳转按钮2 */
@property (nonatomic,strong) ZXContentShowView *clickBtn2;
/**  跳转按钮介绍0 */
@property (nonatomic,strong) UILabel *detailLb0;
/**  跳转按钮介绍1 */
@property (nonatomic,strong) UILabel *detailLb1;
/**  跳转按钮介绍2 */
@property (nonatomic,strong) UILabel *detailLb2;

/**  返回本类计算行高 */
@property (nonatomic,assign) CGFloat cellHeight;

@end
