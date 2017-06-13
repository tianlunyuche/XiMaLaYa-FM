//
//  ZXMoreRecommendController.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZXMoreContentViewModel.h"
/**
 *  (发现-热门更多)推荐控制器
 */
@interface ZXMoreRecommendController : UIViewController

// 作一个键(name), 让MV可以绑定
/**  需要键数组, [0]存_categoryId   [1]存 name*/
@property (nonatomic,strong) NSArray *keyArr;

@end
