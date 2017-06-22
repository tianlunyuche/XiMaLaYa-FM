//
//  ZXEditorCell.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXEditorCell : UITableViewCell

@property(nonatomic,strong)UIButton *coverBtn;
@property(nonatomic,strong)UILabel *titleLb;
//by 作者
@property(nonatomic,strong)UILabel *introLb;
// 播放次数
@property(nonatomic,strong)UILabel *playsLb;
// 集数
@property(nonatomic,strong)UILabel *tracksLb;

@end
