//
//  ZXMenusModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseModel.h"

@class MenuLists;
@interface ZXMenusModel : ZXBaseModel
@property (nonatomic, assign) BOOL hasRecommendedZones;

@property (nonatomic, assign) BOOL isFinished;

@property (nonatomic, assign) NSInteger count;

@property (nonatomic, assign) NSInteger maxPageId;

@property (nonatomic, copy) NSString *msg;

@property (nonatomic, strong) NSArray<MenuLists *> *list;

@property (nonatomic, assign) NSInteger ret;

@end
@interface MenuLists : ZXBaseModel

@property (nonatomic, copy) NSString *tname;

@property (nonatomic, assign) NSInteger category_id;

@end

