//
//  ZXRankModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXRankModel.h"

@implementation ZXRankModel

+ (NSDictionary *)objectClassInArray{
    return @{@"datas" : [RankDatas class]};
}
@end
@implementation RankFocusimages

+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [RFocusImages_List class]};
}

@end


@implementation RFocusImages_List

@end


@implementation RankDatas

+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [RDatas_List class]};
}

@end


@implementation RDatas_List

+ (NSDictionary *)objectClassInArray{
    return @{@"firstKResults" : [RDatas_List_Firstkresults class]};
}

@end


@implementation RDatas_List_Firstkresults

@end


