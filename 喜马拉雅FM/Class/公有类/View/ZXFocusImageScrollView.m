//
//  ZXFocusImageScrollView.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXFocusImageScrollView.h"

@implementation ZXFocusImageScrollView
{
    // 定义完全私有的属性 : 添加成员变量,因为不需要懒加载,所以不需要是属性
    NSTimer *_timer;
    //    UIPageControl *_pageControl;

}

- (instancetype)initWithFocusImgNumber:(NSInteger)number{
    if (self =[super init]) {
        //先关闭自己已存在的定时器
        [_timer invalidate];
        //当前没有头部滚动视图， 返回空对象nil
        if (!number) {
            return nil;
        }
        
        //头部视图origin无效,宽度无效,肯定是与table同宽
        self.frame =CGRectMake(0, 0, 0, kWindowW/660*310);
        
        //添加滚动栏
        _ic =[iCarousel new];
        [self addSubview:_ic];
        [_ic mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        //如果只有一张图，则不可以滚动
        _ic.scrollEnabled = number!=1;
//        _ic.scrollSpeed =1;
        //让图片一张一张滚, 默认NO  滚一次到尾
        _ic.pagingEnabled =YES;
        
        _pageControl =[UIPageControl new];
        _pageControl.numberOfPages =number;
        
        [_ic addSubview:_pageControl];
        [_pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.centerX.mas_equalTo(0);
            make.bottom.mas_equalTo(-6);
            make.height.mas_equalTo(10);
        }];
        
        //如果只有一张图，则不显示圆点
        _pageControl.hidesForSinglePage =YES;
        //小圆点不与用户交互
        _pageControl.userInteractionEnabled =NO;
        //小圆点颜色设置
        _pageControl.pageIndicatorTintColor =[UIColor lightTextColor];
        _pageControl.currentPageIndicatorTintColor =[UIColor whiteColor];
        
        //定时器产生， 开始滚动
        if (number >1){
            _timer =[NSTimer bk_scheduledTimerWithTimeInterval:3 block:^(NSTimer *timer) {
                [_ic scrollToItemAtIndex:_ic.currentItemIndex +1 animated:YES];
            } repeats:YES];
        }
    }
    return  self;
}


@end
