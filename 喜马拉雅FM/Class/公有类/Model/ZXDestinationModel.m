//
//  ZXDestinationModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXDestinationModel.h"

@implementation ZXDestinationModel

@end

@implementation DAlbum

@end


@implementation DTracks

+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [DTracks_List class]};
}

@end


@implementation DTracks_List

@end