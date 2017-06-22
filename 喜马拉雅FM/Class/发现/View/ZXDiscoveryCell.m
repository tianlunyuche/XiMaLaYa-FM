//
//  ZXDiscoveryCell.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXDiscoveryCell.h"

#define kDpicWidth 70
@implementation ZXDiscoveryCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType =UITableViewCellAccessoryNone;
        self.subTitleLb.font =[UIFont systemFontOfSize:13];
        
        //分割线左间距调整
        self.separatorInset =UIEdgeInsetsMake(0, 70, 0, 0);
    }
    return self;
}

#pragma mark - Cell属性懒加载
- (UIImageView *)coverIV{
    if (!_coverIV) {
        _coverIV =[UIImageView new];
        [self.contentView addSubview:_coverIV];
        [_coverIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.bottom.mas_equalTo(0);
            make.size.mas_equalTo(CGSizeMake(40, 40));
            make.width.mas_equalTo(kDpicWidth);
        }];
    }
    return _coverIV;
}

- (UILabel *)titleLb{
    if (!_titleLb) {
        _titleLb =[UILabel new];
        [self.contentView addSubview:_titleLb];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(10);
            make.left.mas_equalTo(self.coverIV.mas_right).mas_equalTo(10);
            make.right.mas_equalTo(-20);
        }];
    }
    return _titleLb;
}

- (UILabel *)subTitleLb{
    if (!_subTitleLb) {
        _subTitleLb =[UILabel new];
        [self.contentView addSubview:_subTitleLb];
        [_subTitleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.titleLb.mas_bottom).mas_equalTo(10);
            make.leadingMargin.mas_equalTo(self.titleLb);
            make.right.bottom.mas_equalTo(-10);
        }];
//        _subTitleLb.numberOfLines =0;
        _subTitleLb.textColor =[UIColor lightGrayColor];
    }
    return _subTitleLb;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
