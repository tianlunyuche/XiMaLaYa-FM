//
//  ZXContentCategoryModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/2/26.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXContentCategoryModel.h"

@implementation ZXContentCategoryModel

+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [CategoryList class]};
}
@end

@implementation CategoryList

@end
