//
//  ZXNavigationController.m
//  喜马拉雅FM
//
//  Created by xinying on 2017/5/25.
//  Copyright © 2017年 habav. All rights reserved.
//

#import "ZXNavigationController.h"
#import "ZXPlayView.h"
// 播放
#import <AVFoundation/AVFoundation.h>

@interface ZXNavigationController ()<PlayViewDelegate>

@property(nonatomic,strong)ZXPlayView *playView;
@property(nonatomic,strong)NSString *imageName;

@property(nonatomic,strong)AVPlayer *player;

@end

@implementation ZXNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 防止其他ViewController的导航被遮挡, 这个类的主要作用是 PlayView
    self.navigationBarHidden = YES;
    
    //开启两个通知接收(ZXMeViewController传入)
    [kNotificationCenter addObserver:self selector:@selector(hidePlayView:) name:@"hidePlayView" object:nil];
    [kNotificationCenter addObserver:self selector:@selector(showPlayView:) name:@"" object:nil];
    
     // 开启一个通知接受,播放URL 及图片
    [kNotificationCenter addObserver:self selector:@selector(playingWithInfoDictionary:) name:@"BeginPlay" object:nil];
    
    self.playView = [[ZXPlayView alloc] init];
    self.playView.delegate = self;
    [self.view addSubview:_playView];
    [_playView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(0);
        make.centerX.mas_equalTo(0);
        make.width.mas_equalTo(65);
        make.height.mas_equalTo(70);
    }];
}

//隐藏图片
- (void)hidePlayView:(NSNotification *)notification{
    
    self.playView.hidden =YES;
}
//显示图片
- (void)showPlayView:(NSNotification *)notification{
    
    self.playView.hidden =NO;
}

/** 通过播放地址 和 播放图片 */
- (void)playingWithInfoDictionary:(NSNotification *)notification {
    
    //设置背景图
    NSURL *coverURL =notification.userInfo[@"coverURL"];
    NSURL *musicURL =notification.userInfo[@"musicURL"];
    [self.playView.contentIV setImageWithURL:coverURL];
    
    //支持后台播放
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionOrientationBack error:nil];
    //激活
    [[AVAudioSession sharedInstance] setActive:YES error:nil];
    
    //开始播放
    _player =[AVPlayer playerWithURL:musicURL];
    [_player play];
    // 已改到背景变化时再变化
    //    self.playView.playButton.selected = YES;
}

- (void)playButtonDidClick:(BOOL)selected{
    
    //按钮被点击， 判断按钮的seledted 状态
    if (selected) {
        [_player play]; //继续播放
    }else{
        [_player pause];    //暂停播放，以后会取消 , 此处应该是跳转最后一个播放器控制器
    }
}

- (void)dealloc{
    
    //关闭消息
    [kNotificationCenter removeObserver:self];
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
