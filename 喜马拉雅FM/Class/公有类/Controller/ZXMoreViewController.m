//
//  ZXMoreViewController.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/6/1.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXMoreViewController.h"

@interface ZXMoreViewController ()

@end

@implementation ZXMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    
    //    WMPageController 设置
    self.menuHeight = 35;
    self.itemsWidths = [self titleWidth];
    self.menuViewStyle = WMMenuViewStyleLine;
    self.progressColor = [UIColor blueColor];
}

- (NSArray *)titleWidth {
    NSMutableArray *widthArr = [NSMutableArray new];
    for (NSString *name in self.titles) {
        //   在分页时要计算一段文本的尺寸大小，之前使用了NSString类的sizeWithFont:constrainedToSize:lineBreakMode:方法，但是该方法已经被iOS7 Deprecated了，而iOS7新出了一个boudingRectWithSize:options:attributes:context方法来代替：
        if (kIOS7_OR_LATER) {
            // 7.0之后
            CGFloat width = [name boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingTruncatesLastVisibleLine attributes:nil context:nil].size.width;
            [widthArr addObject:@(width+40)];
        } else {
            //             7.0之前
            CGFloat width =  [name sizeWithFont:[UIFont systemFontOfSize:15] constrainedToSize:CGSizeMake(MAXFLOAT, MAXFLOAT) lineBreakMode:0].width;
            
        }
        
    }
    
    return [widthArr copy];
}

- (void)back {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
