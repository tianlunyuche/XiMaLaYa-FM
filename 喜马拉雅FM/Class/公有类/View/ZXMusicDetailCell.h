//
//  ZXMusicDetailCell.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXMusicDetailCell : UITableViewCell
/** 原则上 .h文件中只存放需要被调用get或者set方法的属性 */

/** 音乐封面图 */
@property(nonatomic,strong) UIImageView *coverIV;
/** 题目标签 */
@property (nonatomic,strong) UILabel *titleLb;
/** 添加时间标签 */
@property(nonatomic,strong) UILabel *updateTimeLb;
/** 音乐来源标签 */
@property(nonatomic,strong) UILabel *sourceLb;
/** 播放次数标签 */
@property(nonatomic,strong) UILabel *playCountLb;
/** 喜欢次数标签 */
@property(nonatomic,strong) UILabel *favorCountLb;
/** 评论次数标签 */
@property(nonatomic,strong) UILabel *commentCountLb;
/** 时长标签 */
@property(nonatomic,strong) UILabel *durationLb;
/** 下载按钮 */
@property(nonatomic,strong) UIButton *downloadBtn;

@end
