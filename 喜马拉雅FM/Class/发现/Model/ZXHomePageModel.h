//
//  ZXHomePageModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseModel.h"

@class DiscoveryC,DiscoveryC_List,FocusImg,FocusImg_List,HotR,HotR_List,HotR_List_List,Entrances,Entrances_List,EditorrRA,EditorrRA_List,SpecialC,SpecialC_List;
@interface ZXHomePageModel : ZXBaseModel

@property (nonatomic, strong)SpecialC *specialColumn;

@property (nonatomic, strong)HotR *hotRecommends;

@property (nonatomic, strong)DiscoveryC *discoveryColumns;

@property (nonatomic, copy)NSString *msg;

@property (nonatomic, strong)FocusImg *focusImages;

@property (nonatomic, strong)Entrances *entrances;

@property (nonatomic, assign)NSInteger ret;

@property (nonatomic, strong)EditorrRA *editorRecommendAlbums;

@end


@interface DiscoveryC : ZXBaseModel

@property (nonatomic, assign)NSInteger locationInHotRecommend;

@property (nonatomic, copy)NSString *title;

@property (nonatomic, strong)NSArray<DiscoveryC_List *> *list;

@property (nonatomic, assign)NSInteger ret;

@end


@interface DiscoveryC_List : ZXBaseModel

@property (nonatomic, copy)NSString *subtitle;

@property (nonatomic, assign)NSInteger ID;

@property (nonatomic, copy)NSString *coverPath;

@property (nonatomic, copy)NSString *title;

@property (nonatomic, copy)NSString *contentType;

@property (nonatomic, assign)BOOL enableShare;

@property (nonatomic, assign)NSInteger orderNum;

@property (nonatomic, assign)NSInteger contentUpdatedAt;

@property (nonatomic, copy)NSString *sharePic;

@property (nonatomic, copy)NSString *url;

@end


@interface FocusImg : ZXBaseModel

@property (nonatomic, assign)NSInteger ret;

@property (nonatomic, copy)NSString *title;

@property (nonatomic, strong)NSArray<FocusImg_List *> *list;

@end


@interface FocusImg_List : ZXBaseModel

@property (nonatomic, assign) NSInteger specialId;

@property (nonatomic, assign) NSInteger subType;

@property (nonatomic, copy) NSString *shortTitle;

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *pic;

@property (nonatomic, assign) BOOL isShare;

@property (nonatomic, assign) BOOL is_External_url;

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, copy) NSString *longTitle;

@end


@interface HotR : ZXBaseModel

@property (nonatomic, assign) NSInteger ret;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSArray<HotR_List *> *list;

@end


@interface HotR_List : ZXBaseModel

@property (nonatomic, assign) BOOL hasMore;

@property (nonatomic, copy) NSString *contentType;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) BOOL isFinished;

@property (nonatomic, assign) NSInteger categoryId;

@property (nonatomic, assign) NSInteger count;

@property (nonatomic, strong) NSArray<HotR_List_List *> *list;

@end


@interface HotR_List_List : ZXBaseModel

@property (nonatomic, assign) NSInteger tracks;

@property (nonatomic, assign) NSInteger serialState;

@property (nonatomic, assign) NSInteger albumId;

@property (nonatomic, assign) NSInteger trackId;

@property (nonatomic, assign) NSInteger isFinished;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *trackTitle;

@property (nonatomic, copy) NSString *coverLarge;

@property (nonatomic, copy) NSString *tags;

@property (nonatomic, assign) NSInteger playsCounts;

@end


@interface Entrances : ZXBaseModel

@property (nonatomic, assign) NSInteger ret;

@property (nonatomic, strong) NSArray<Entrances_List *> *list;

@end


@interface Entrances_List : ZXBaseModel

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *entranceType;

@property (nonatomic, copy) NSString *coverPath;

@end


@interface EditorrRA : ZXBaseModel

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSArray<EditorrRA_List *> *list;

@property (nonatomic, assign) BOOL hasMore;

@property (nonatomic, assign) NSInteger ret;

@end


@interface EditorrRA_List : ZXBaseModel

@property (nonatomic, assign) NSInteger tracks;

@property (nonatomic, assign) NSInteger serialState;

@property (nonatomic, assign) NSInteger albumId;

@property (nonatomic, assign) NSInteger trackId;

@property (nonatomic, assign) NSInteger isFinished;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *trackTitle;

@property (nonatomic, copy) NSString *coverLarge;

@property (nonatomic, copy) NSString *tags;

@property (nonatomic, assign) NSInteger playsCounts;

@end


@interface SpecialC : ZXBaseModel

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSArray<SpecialC_List *> *list;

@property (nonatomic, assign) BOOL hasMore;

@property (nonatomic, assign) NSInteger ret;

@end


@interface SpecialC_List : ZXBaseModel

@property (nonatomic, assign) NSInteger specialId;

@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, copy) NSString *coverPath;

@property (nonatomic, copy) NSString *contentType;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *footnote;

@property (nonatomic, assign) NSInteger columnType;

@end





