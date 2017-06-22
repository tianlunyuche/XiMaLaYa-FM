//
//  ZXCategoryModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseModel.h"

@class CategoryLists;
@interface ZXCategoryModel : ZXBaseModel


@property (nonatomic, assign) NSInteger ret;

@property (nonatomic, copy) NSString *msg;

@property (nonatomic, strong) NSArray<CategoryLists *> *list;

@end

@interface CategoryLists : ZXBaseModel

@property (nonatomic, assign) BOOL selectedSwitch;

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *coverPath;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) BOOL isFinished;

@property (nonatomic, copy) NSString *contentType;

@property (nonatomic, assign) NSInteger orderNum;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) BOOL isChecked;

@end
