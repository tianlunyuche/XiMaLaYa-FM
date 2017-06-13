//
//  ZXLiveModel.h
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXBaseModel.h"
/**
 *  (电台)直播模型
 */
@class LiveResult,LResult_Recommand,LR_R_RadioPlayURLs,LResult_TopRadioList,LR_T_RadioPlayURLs;

@interface ZXLiveModel : ZXBaseModel

@property (nonatomic, copy) NSString *ret;

@property (nonatomic, strong) LiveResult *result;

@property (nonatomic, copy) NSString *msg;

@end
@interface LiveResult : ZXBaseModel

@property (nonatomic, strong) NSArray<LResult_Recommand *> *recommandRadioList;

@property (nonatomic, strong) NSArray<LResult_TopRadioList *> *topRadioList;

@end

@interface LResult_Recommand : ZXBaseModel

@property (nonatomic, copy) NSString *radioPlayCount;

@property (nonatomic, copy) NSString *startTime;

@property (nonatomic, copy) NSString *endTime;

@property (nonatomic, assign) NSInteger recommendType;

@property (nonatomic, assign) NSInteger radioId;

@property (nonatomic, strong) LR_R_RadioPlayURLs *radioPlayUrl;

@property (nonatomic, assign) NSInteger programScheduleId;

@property (nonatomic, copy) NSString *picPath;

@property (nonatomic, copy) NSString *rname;

@property (nonatomic, copy) NSString *programName;

@end

@interface LR_R_RadioPlayURLs : ZXBaseModel

@property (nonatomic, copy) NSString *radio_24_ts;

@property (nonatomic, copy) NSString *radio_64_aac;

@property (nonatomic, copy) NSString *radio_24_aac;

@property (nonatomic, copy) NSString *radio_64_ts;

@end

@interface LResult_TopRadioList : ZXBaseModel

@property (nonatomic, assign) NSInteger radioPlayCount;

@property (nonatomic, copy) NSString *radioCoverLarge;

@property (nonatomic, assign) NSInteger radioId;

@property (nonatomic, assign) NSInteger programScheduleId;

@property (nonatomic, strong) LR_T_RadioPlayURLs *radioPlayUrl;

@property (nonatomic, copy) NSString *rname;

@property (nonatomic, copy) NSString *programName;

@property (nonatomic, copy) NSString *radioCoverSmall;

@end

@interface LR_T_RadioPlayURLs : ZXBaseModel

@property (nonatomic, copy) NSString *radio_24_ts;

@property (nonatomic, copy) NSString *radio_64_aac;

@property (nonatomic, copy) NSString *radio_24_aac;

@property (nonatomic, copy) NSString *radio_64_ts;

@end

