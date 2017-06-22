//
//  ZXTitleView.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>

// 监听更多按钮点击事件协议
@protocol TitleViewDelegate <NSObject>

- (void)titleViewDidClick:(NSInteger)tag;

@end

@interface ZXTitleView : UIView

//添加代理
@property(nonatomic,weak)id<TitleViewDelegate> delegate;

- (instancetype)initWithTitle:(NSString *)title hasMore:(BOOL)more;

/**  标题 */
@property(nonatomic,strong)NSString *title;
@property(nonatomic,strong)UILabel *titleLb;

@end
