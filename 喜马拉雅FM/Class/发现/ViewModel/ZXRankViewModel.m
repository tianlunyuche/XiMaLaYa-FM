//
//  ZXRankViewModel.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/3/4.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXRankViewModel.h"
#import "ZXHomePageNetManager.h"
#import "ZXRankModel.h"

@interface ZXRankViewModel ()
@property (nonatomic,strong)ZXRankModel *model;
@end

@implementation ZXRankViewModel

- (void)getDataCompletionHandle:(void (^)(NSError *))completed {
    self.dataTask = [ZXHomePageNetManager getRankPageCompletionHandle:^(ZXRankModel* responseObject, NSError *error) {
        self.model = responseObject;
        completed(error);
    }];
}

// 返回分组数
- (NSInteger)sectionNumber {
    return self.model.datas.count;
}

/**  通过分组数返回行数 */
- (NSInteger)rowNumberForSection:(NSInteger)section {
    return self.model.datas[section].list.count;
}
/**  通过分组数返回主标题 */
- (NSString *)mainTitleForSection:(NSInteger)section {
    return self.model.datas[section].title;
}

/**  通过分组和行数, 返回图标URL */
- (NSURL *)coverURLForSection:(NSInteger)section row:(NSInteger)row {
    NSString *path = self.model.datas[section].list[row].coverPath;
    return [NSURL URLWithString:path];
}
/**  通过分组和行数, 返回URL */
- (NSString *)titleForSection:(NSInteger)section row:(NSInteger)row{
  
    return self.model.datas[section].list[row].title;
}
/**  通过分组和行数, 返回URL */
- (NSString *)firstTitleForSection:(NSInteger)section row:(NSInteger)row {
    return [NSString stringWithFormat:@"1 %@",self.model.datas[section].list[row].firstTitle];
}
/**  通过分组和行数, 返回URL */
- (NSString *)secondTitleForSection:(NSInteger)section row:(NSInteger)row {
    
    ZXLog(@"%lu",(unsigned long)self.model.datas[section].list[row].firstKResults.count);
    if (self.model.datas[section].list[row].firstKResults.count >1) {
        return [NSString stringWithFormat:@"2 %@",self.model.datas[section].list[row].firstKResults[1].title];
    }else return nil;
}

- (NSInteger)focusImgNumber {
    return self.model.focusImages.list.count;
}
- (NSURL *)focusImgURLForIndex:(NSInteger)index {
    NSString *path = self.model.focusImages.list[index].pic;
    return [NSURL URLWithString:path];
}

// 改写父类cell高度方法
-(CGFloat)cellHeightForIndexPath:(NSIndexPath *)indexPath {
    return 80;
}


@end
