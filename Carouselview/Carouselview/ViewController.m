//
//  ViewController.m
//  Carouselview
//
//  Created by aspire on 16/3/8.
//  Copyright © 2016年 guoyutao. All rights reserved.
//

#import "ViewController.h"
#import "WGAdvertisementView.h"
@interface ViewController ()<WGAdvertisementViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    UIView *adView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 140)];
    adView.userInteractionEnabled = YES;
    [self.view addSubview:adView];
    WGAdvertisementView *wgView = [[WGAdvertisementView alloc]initWithFrame:adView.bounds];
    wgView.delegate = self;
    [adView addSubview:wgView];
    //模拟请求到的数据
    NSArray *ads = @[@{
                         @"desc":@"",
                         @"imgurl":@"http://pic.xcarimg.com/img/news_photo/2016/03/08/a_8tk7X8LxHr1457390797240417145739079724.jpg",
                         @"jumpurl":@"http://info.xcar.com.cn/201603/news_1915451_1.html",
                         @"title":@"如果维密变车模 男同胞备好纸巾过3.8",
                         },
                     @{
                         @"desc":@"",
                       @"imgurl":@"http://pic.xcarimg.com/img/news_photo/2016/03/08/si0bB8ZfA31457390845229955145739084522.jpg",
                       @"jumpurl":@"http://wap.xcar.com.cn/bbs/bbs_iphone_5.php?tid=26317922",
                       @"title":@"拒绝冲动消费 文艺青年钟情斯柯达速派",},
                     @{
                         @"desc":@"",
                       @"imgurl":@"http://pic.xcarimg.com/img/news_photo/2016/03/08/lTh4ZgyiXV1457390912213135145739091221.jpg",
                       @"jumpurl":@"http://info.xcar.com.cn/201603/news_1915451_1.html",
                       @"title":@"新瑞虎5百万信赖版焕新上市",},
                     @{
                         @"desc":@"最懂女人心 盘点车界十大造福女性科技",
                       @"jumpurl":@"http://wap.xcar.com.cn/bbs/bbs_iphone_5.php?tid=26317922",
                       @"imgurl":@"http://pic.xcarimg.com/img/news_photo/2016/03/08/yGJiKuO8Wy1457390820188217145739082018.jpg",
                       @"title":@"",}];
    
    [wgView setImageInfos:ads];//这句值关键的*****************
}

#pragma mark - WGAdvertisementViewDelegate

- (void)pushAdVc:(WGWebViewController *)vc {
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
