//
//  ZXMoreCategoryVC.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  (发现-热门更多)其他分类控制器
 */
@interface ZXMoreCategoryVC : UIViewController

// 作一个键, 让MV可以绑定    接收外部传参，决定当前控制器显示哪种类型的信息
/**  需要键数组, [0]存_categoryId   [1]存 name*/
@property (nonatomic,strong) NSArray *keyArr;

@end
