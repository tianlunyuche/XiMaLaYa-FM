//
//  ZXAnchorModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseModel.h"
/**
 *  主播类: 解析URL:http://mobile.ximalaya.com/m/explore_user_index?device=android&page=1
 */
@class AnchorRecommend,ARecommend_List,AnchorLists,ALists_List;
@interface ZXAnchorModel : ZXBaseModel

@property (nonatomic, strong) AnchorRecommend *recommendBozhu;

@property (nonatomic, assign) NSInteger maxPageId;

@property (nonatomic, strong) NSArray<AnchorLists *> *list;

@property (nonatomic, copy) NSString *msg;

@property (nonatomic, assign) NSInteger ret;

@end

@interface AnchorRecommend : ZXBaseModel

@property (nonatomic, assign) NSInteger ret;

@property (nonatomic, strong) NSArray<ARecommend_List *> *list;

@end

@interface ARecommend_List : ZXBaseModel

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, copy) NSString *nickname;

@property (nonatomic, copy) NSString *smallLogo;

@end

@interface AnchorLists : ZXBaseModel

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSArray<ALists_List *> *list;

@property (nonatomic, copy) NSString *name;

@end

@interface ALists_List : ZXBaseModel

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, copy) NSString *nickname;

@property (nonatomic, copy) NSString *smallLogo;

@end


