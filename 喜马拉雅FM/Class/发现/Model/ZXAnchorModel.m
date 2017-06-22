//
//  ZXAnchorModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXAnchorModel.h"

@implementation ZXAnchorModel

+ (NSDictionary *)objectClassInArray{
    return @{@"list":[AnchorLists class]};
}
@end

@implementation AnchorRecommend

+(NSDictionary *)objectClassInArray{
    return @{@"list":[ARecommend_List class]};
}

@end

@implementation ARecommend_List

@end

@implementation AnchorLists

+(NSDictionary *)objectClassInArray{
    return @{@"list":[ALists_List class]};
}

@end

@implementation ALists_List


@end

