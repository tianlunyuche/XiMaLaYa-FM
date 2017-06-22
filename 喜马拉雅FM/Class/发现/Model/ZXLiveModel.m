//
//  ZXLiveModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXLiveModel.h"

@implementation ZXLiveModel

+ (NSDictionary *)objectClassInArray{
    return @{@"recommandRadioList" : [LResult_Recommand class], @"topRadioList" : [LResult_TopRadioList class]};
}

@end

@implementation LResult_Recommand

@end


@implementation LR_R_RadioPlayURLs

@end


@implementation LResult_TopRadioList

@end


@implementation LR_T_RadioPlayURLs

@end