//
//  ZXContentCategoryModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseModel.h"

@class CategoryList;
@interface ZXContentCategoryModel : ZXBaseModel

@property (nonatomic, assign) NSInteger pageId;

@property (nonatomic, assign) NSInteger pageSize;

@property (nonatomic, assign) NSInteger totalCount;

@property (nonatomic, strong) NSArray *subfields;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) NSInteger maxPageId;

@property (nonatomic, copy) NSString *msg;

@property (nonatomic, strong) NSArray<CategoryList *> *list;

@property (nonatomic, assign) NSInteger ret;

@end
@interface CategoryList : ZXBaseModel

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *intro;

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, assign) NSInteger tracks;

@property (nonatomic, assign) NSInteger tracksCounts;

@property (nonatomic, assign) NSInteger playsCounts;

@property (nonatomic, assign) NSInteger isFinished;

@property (nonatomic, copy) NSString *tags;

@property (nonatomic, copy) NSString *coverMiddle;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) long long lastUptrackAt;

@property (nonatomic, copy) NSString *albumCoverUrl290;

@property (nonatomic, assign) NSInteger serialState;

@property (nonatomic, assign) NSInteger albumId;

@property (nonatomic, copy) NSString *nickname;

@property (nonatomic, copy) NSString *lastUptrackTitle;

@property (nonatomic, assign) NSInteger lastUptrackId;

@end


