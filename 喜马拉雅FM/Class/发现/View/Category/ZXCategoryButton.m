//
//  ZXCategoryButton.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXCategoryButton.h"

@implementation ZXCategoryButton

- (instancetype)init{
    if (self =[super init]) {
        self.categoryLb.font =[UIFont systemFontOfSize:15];
    }
    return self;
}

- (UIImageView *)icon{
    if (!_icon) {
        _icon =[UIImageView new];
        [self addSubview:_icon];
        [_icon mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(20);
            make.size.mas_equalTo(CGSizeMake(20, 20));
            make.centerY.mas_equalTo(0);
        }];
    }
    return _icon;
}

- (UILabel *)categoryLb {
    if (!_categoryLb) {
        _categoryLb = [UILabel new];
        [self addSubview:_categoryLb];
        [_categoryLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.icon.mas_right).mas_equalTo(20);
            make.centerY.mas_equalTo(0);
            make.width.mas_lessThanOrEqualTo(80);
        }];
    }
    return _categoryLb;
}

@end
