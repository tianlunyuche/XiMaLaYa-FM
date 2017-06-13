//
//  ZXLiveRadioCell.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXLiveRadioCell.h"

@interface ZXLiveRadioCell ()

@property(nonatomic,strong)UIButton *btn0;
@property(nonatomic,strong)UIButton *btn1;
@property(nonatomic,strong)UIButton *btn2;
@property(nonatomic,strong)UIButton *btn3;

@end

@implementation ZXLiveRadioCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self ==[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType =UITableViewCellAccessoryNone;
        [self.btn0 setImage:[UIImage imageNamed:@"liveLocal"] forState:UIControlStateNormal];
        [self.btn1 setImage:[UIImage imageNamed:@"liveCountry"] forState:UIControlStateNormal];
        [self.btn2 setImage:[UIImage imageNamed:@"liveProvince"] forState:UIControlStateNormal];
        [self.btn3 setImage:[UIImage imageNamed:@"liveNet"] forState:UIControlStateNormal];
    }
    return self;
}

#pragma mark - 懒加载
- (UIButton *)btn0{
    if (!_btn0) {
        _btn0 =[UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_btn0];
        [_btn0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10);
            make.top.bottom.mas_equalTo(0);
        }];
    }
    return _btn0;
}

- (UIButton *)btn1{
    if (!_btn1) {
        _btn1 =[UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_btn1];
        [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.btn0.mas_right).mas_equalTo(10);
            make.top.bottom.mas_equalTo(0);
            make.size.mas_equalTo(self.btn0);
        }];
    }
    return _btn1;
}

- (UIButton *)btn2{
    if (!_btn2) {
        _btn2 =[UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_btn2];
        [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.btn1.mas_right).mas_equalTo(10);
            make.top.bottom.mas_equalTo(0);
            make.size.mas_equalTo(self.btn0);
        }];
    }
    return _btn2;
}

- (UIButton *)btn3 {
    if (!_btn3) {
        _btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_btn3];
        [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.btn2.mas_right).mas_equalTo(10);
            make.right.mas_equalTo(-10);
            make.top.bottom.mas_equalTo(0);
            make.size.mas_equalTo(self.btn0);
        }];
        
    }
    return _btn3;
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
