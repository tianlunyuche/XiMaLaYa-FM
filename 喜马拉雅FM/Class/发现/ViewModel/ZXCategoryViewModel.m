//
//  ZXCategoryViewModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXCategoryViewModel.h"
#import "ZXHomePageNetManager.h"
#import "ZXCategoryModel.h"

@interface ZXCategoryViewModel ()

@property(nonatomic,strong)ZXCategoryModel *model;

@end

@implementation ZXCategoryViewModel

- (void)getDataCompletionHandle:(void (^)(NSError *))completed{
    self.dataTask =[ZXHomePageNetManager getCategoryPageCompletionHandle:^(ZXCategoryModel *responseObject, NSError *error) {
        self.model =responseObject;
        completed(error);
    }];
}

- (NSInteger)listsCount{
    return self.model.list.count;
}

//获取图标接口
- (NSURL *)coverURLForIndex:(NSInteger)index{
    NSString *path =self.model.list[index].coverPath;
    return [NSURL URLWithString:path];
}

//获取Title接口
- (NSString *)titleForIndex:(NSInteger)index {
    return self.model.list[index].title;
}

@end
