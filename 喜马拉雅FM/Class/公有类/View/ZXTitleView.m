//
//  ZXTitleView.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXTitleView.h"
#import "ZXMoreButton.h"

@interface ZXTitleView ()
/**  三角剪头 */
@property (nonatomic,strong) UIImageView *arrowIV;
/**  更多按钮 */
@property (nonatomic,strong) UIButton *moreBtn;

@end

@implementation ZXTitleView

- (instancetype)initWithTitle:(NSString *)title hasMore:(BOOL)more {
    if (self = [super init]) {
        self.title = title;
        self.arrowIV.image = [UIImage imageNamed:@"tabbar_np_play"];
        [self.titleLb setTextColor:[UIColor blackColor]];
        if (more) {
            [self.moreBtn setTitle:@"更多 " forState:UIControlStateNormal];
        }
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

// 预防
- (instancetype)init {
    if (self = [super init]) {
        NSAssert1(NO, @"%s  必须使用initWithTitle:方法初始化", __FUNCTION__);
    }
    return self;
}

#pragma mark - 懒加载
- (UIImageView *)arrowIV{
    if (!_arrowIV) {
        _arrowIV =[[UIImageView alloc] init];
        [self addSubview:_arrowIV];
        [_arrowIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(8);
            make.bottom.mas_equalTo(-12);
            make.size.mas_equalTo(CGSizeMake(10, 10));
        }];
    }
    return _arrowIV;
}

- (UILabel *)titleLb {
    if (!_titleLb) {
        _titleLb = [UILabel new];
        [self addSubview:_titleLb];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self.arrowIV);
            make.left.mas_equalTo(self.arrowIV.mas_right).mas_equalTo(4);
            make.width.mas_equalTo(150);
        }];
        _titleLb.font = [UIFont systemFontOfSize:13];
        _titleLb.text = _title;
    }
    return _titleLb;
}
- (UIButton *)moreBtn {
    if (!_moreBtn) {
        _moreBtn = [ZXMoreButton new];
        [self addSubview:_moreBtn];
        [_moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-5);
            make.centerY.mas_equalTo(self.titleLb);
            make.size.mas_equalTo(CGSizeMake(60, 20));
        }];
        
        [_moreBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        _moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        _moreBtn.titleLabel.textAlignment = NSTextAlignmentRight;
        [_moreBtn setImage:[UIImage imageNamed:@"cell_arrow"] forState:UIControlStateNormal];
        
        // 按钮点击事件
        [_moreBtn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _moreBtn;
}

- (void)click {
    if ([self.delegate respondsToSelector:@selector(titleViewDidClick:)]) {
        [self.delegate titleViewDidClick:self.tag];
    }
    ZXLog(@"更多按钮被点击 %ld",self.tag);
}

@end
