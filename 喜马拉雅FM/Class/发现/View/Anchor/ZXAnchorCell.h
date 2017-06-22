//
//  ZXAnchorCell.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZXAnchorView.h"
/**
 *  主播Cell: 三按钮 三label 三小按钮
 */
@interface ZXAnchorCell : UITableViewCell

//@property (nonatomic,strong) UIImageView *anthorIV0;
//@property (nonatomic,strong) UIImageView *anthorIV1;
//@property (nonatomic,strong) UIImageView *anthorIV2;
//@property (nonatomic,strong) UILabel *nameLb0;
//@property (nonatomic,strong) UILabel *nameLb1;
//@property (nonatomic,strong) UILabel *nameLb2;

@property (nonatomic,strong)ZXAnchorView *anchorView0;
@property (nonatomic,strong)ZXAnchorView *anchorView1;
@property (nonatomic,strong)ZXAnchorView *anchorView2;


@end
