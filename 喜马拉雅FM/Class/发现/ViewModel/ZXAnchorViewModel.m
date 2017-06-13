//
//  ZXAnchorViewModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXAnchorViewModel.h"
#import "ZXHomePageNetManager.h"
#import "ZXAnchorModel.h"

@interface ZXAnchorViewModel ()
@property (nonatomic,strong)ZXAnchorModel *model;
@end

@implementation ZXAnchorViewModel

- (void)getDataCompletionHandle:(void (^)(NSError *))completed {
    self.dataTask = [ZXHomePageNetManager getAnchorPageCompletionHandle:^(ZXAnchorModel* responseObject, NSError *error) {
        self.model = responseObject;
        
        completed(error);
    }];
}

- (NSInteger)section {
    return self.model.list.count;
}
// 主播cover图片
- (NSURL *)coverURLForSection:(NSInteger)section Index:(NSInteger)index {
    NSString *path = self.model.list[section].list[index].smallLogo;
    return [NSURL URLWithString:path];
}
// 主播Name
- (NSString *)nameForSection:(NSInteger)section Index:(NSInteger)index {
    return self.model.list[section].list[index].nickname;
}

- (NSString *)mainTitleForSection:(NSInteger)section {
    return self.model.list[section].title;
}

/** 通过indexPath返回cell高*/
- (CGFloat)cellHeightForIndexPath:(NSIndexPath *)indexPath {
    return 170;
}


@end
