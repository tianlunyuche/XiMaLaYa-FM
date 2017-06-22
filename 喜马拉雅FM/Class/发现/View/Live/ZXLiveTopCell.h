//
//  ZXLiveTopCell.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  直播排行榜
 */
@interface ZXLiveTopCell : UITableViewCell

@property (nonatomic,strong) UIButton *coverBtn;
@property (nonatomic,strong) UILabel *titleLb;
@property (nonatomic,strong) UILabel *subTitleLb;
// 10张专辑
@property (nonatomic,strong) UILabel *footNoteLb;

@end
