//
//  ZXJumpVC.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXJumpVC.h"
#import "ZXMoreViewController.h"
#import "ZXMoreRecommendController.h"  // 推荐
#import "ZXMoreCategoryVC.h"          // 其他类
#import "ZXMoreContentViewModel.h"    // 跳转VM

@interface ZXJumpVC ()

@property (nonatomic,strong) ZXMoreContentViewModel *moreVM;

@end

@implementation ZXJumpVC


- (instancetype)initWithCategoryId:(NSInteger)categoryId contentType:(NSString *)type tag:(NSInteger)tag {
    if (self = [super init]) {
        _categoryId = categoryId;
        _type = type;
        _tag = tag;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [MBProgressHUD showMessage:@"正在努力为您加载..."];
    [self.moreVM getDataCompletionHandle:^(NSError *error) {
        [MBProgressHUD hideHUD];
        // 创建跳转页
        ZXMoreViewController *mc = [[ZXMoreViewController alloc] initWithViewControllerClasses:[self viewControllerClassesForTag:self.tag] andTheirTitles:[self.moreVM tagsArrayForSection:self.tag]];
        mc.keys = [self vcKeysForTag:self.tag];
        mc.values = [self vcValuesForTag:self.tag];
        // 再跳隐藏tabbar
        mc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:mc animated:NO];
        //        mc.hidesBottomBarWhenPushed = NO;
    }];
}

/**  创建控制器数组 要与TheirTitles对应上*/
- (NSArray *)viewControllerClassesForTag:(NSInteger)tag {
    NSMutableArray *controllerArr = [NSMutableArray array];
    // 加推荐页
    [controllerArr addObject:[ZXMoreRecommendController class]];
    // 加同类分页
    NSInteger count = [self.moreVM tagsArrayForSection:tag].count;
    // 因为0被推荐页占有所以从0开始
    for (int i=1; i<count; i++) {
        [controllerArr addObject:[ZXMoreCategoryVC class]];
    }
    return [controllerArr copy];
}

#pragma mark - 制作控制器的键值
/** 提供每个VC对应的key值数组 */
- (NSMutableArray *)vcKeysForTag:(NSInteger)tag {
    NSMutableArray *keyArr = [NSMutableArray new];
    NSInteger count = [self.moreVM tagsArrayForSection:tag].count;
    for (int i = 0; i<count; i++) {
        [keyArr addObject:@"keyArr"];
    }
    return [keyArr copy];
}
/** 提供每个VC对应的values值数组 */
- (NSMutableArray *)vcValuesForTag:(NSInteger)tag {
    NSMutableArray *valueArr = [NSMutableArray new];
    // 因为控制器VM需要name和categoryId  所以传数组
    for (NSString *name in [self.moreVM tagsArrayForSection:tag]) {
        NSArray *needArr = @[@(_categoryId),name,self.moreVM];
        [valueArr addObject:needArr];
    }
    return [valueArr copy];
}


#pragma mark - 懒加载
- (ZXMoreContentViewModel *)moreVM {
    if (!_moreVM) {
        _moreVM = [[ZXMoreContentViewModel alloc] initWithCategoryId:_categoryId contentType:_type];
    }
    return _moreVM;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
