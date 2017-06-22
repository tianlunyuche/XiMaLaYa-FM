//
//  ZXSpecialModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseModel.h"
/**
 *  精品听单栏模型
 */
@class SpecialMoreList;

@interface ZXSpecialModel : ZXBaseModel
@property (nonatomic, assign) NSInteger pageId;

@property (nonatomic, assign) NSInteger pageSize;

@property (nonatomic, assign) NSInteger totalCount;

@property (nonatomic, assign) NSInteger count;

@property (nonatomic, assign) NSInteger maxPageId;

@property (nonatomic, copy) NSString *moduleTitle;

@property (nonatomic, strong) NSArray<SpecialMoreList *> *list;

@property (nonatomic, assign) NSInteger ret;

@property (nonatomic, copy) NSString *msg;

@end
@interface SpecialMoreList : ZXBaseModel

@property (nonatomic, assign) NSInteger specialId;

@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, copy) NSString *coverPathSmall;

@property (nonatomic, assign) NSInteger contentType;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *footnote;

@property (nonatomic, copy) NSString *coverPathBig;

@property (nonatomic, assign) long long releasedAt;

@property (nonatomic, assign) BOOL isHot;

@end
