//
//  ZXDestinationVC.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  最终展示页控制器
 */
@interface ZXDestinationVC : UIViewController

// 选择接受外界title, 以及albumId 初始化
- (instancetype)initWithAlbumId:(NSInteger)albumId title:(NSString *)oTitle;
@property (nonatomic,assign) NSInteger albumId;
@property (nonatomic,strong) NSString *oTitle;

@end
