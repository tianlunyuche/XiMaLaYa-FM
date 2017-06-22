//
//  ZXRankModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseModel.h"
/**
 *  榜单:http://mobile.ximalaya.com/mobile/discovery/v2/rankingList/group?channel=and-d10&device=android&includeActivity=true&includeSpecial=true&scale=2&version=4.3.32.2
 */
@class RankFocusimages,RFocusImages_List,RankDatas,RDatas_List,RDatas_List_Firstkresults;

@interface ZXRankModel : ZXBaseModel

@property (nonatomic, assign) NSInteger ret;

@property (nonatomic, strong) RankFocusimages *focusImages;

@property (nonatomic, copy) NSString *msg;

@property (nonatomic, strong) NSArray<RankDatas *> *datas;

@end


@interface RankFocusimages : ZXBaseModel

@property (nonatomic, assign) NSInteger ret;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSArray<RFocusImages_List *> *list;

@end


@interface RFocusImages_List : ZXBaseModel

@property (nonatomic, copy) NSString *url;

@property (nonatomic, assign) NSInteger activityId;

@property (nonatomic, copy) NSString *shortTitle;

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *pic;

@property (nonatomic, assign) BOOL isShare;

@property (nonatomic, assign) BOOL is_External_url;

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, copy) NSString *longTitle;

@end


@interface RankDatas : ZXBaseModel

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) NSInteger count;

@property (nonatomic, strong) NSArray<RDatas_List *> *list;

@property (nonatomic, assign) NSInteger ret;

@end


@interface RDatas_List : ZXBaseModel

@property (nonatomic, assign) NSInteger orderNum;

@property (nonatomic, assign) NSInteger top;

@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, assign) NSInteger period;

@property (nonatomic, copy) NSString *contentType;

@property (nonatomic, assign) NSInteger firstId;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *key;

@property (nonatomic, copy) NSString *rankingRule;

@property (nonatomic, copy) NSString *firstTitle;

@property (nonatomic, strong) NSArray<RDatas_List_Firstkresults *> *firstKResults;

@property (nonatomic, copy) NSString *calcPeriod;

@property (nonatomic, copy) NSString *coverPath;

@property (nonatomic, assign) NSInteger categoryId;

@end


@interface RDatas_List_Firstkresults : ZXBaseModel

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *contentType;

@end

