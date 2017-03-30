滚动轮播视图
==========

集成指导：
--------

集成时只需引入在你的项目中WGAdvertisementView.h WGAdvertisementView.m WGProductImageView.h WGProductImageView.m 四个文件（WGWebViewController是为了达到演示效果而引入到WGAdvertisementView的，这个可以根据自己的实际情况替换相应的类）

示例
----

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

图片演示

------

![滚动轮播gif](https://github.com/WG-guoyutao/-Carouselview/blob/master/-Carouselview/Carouselview/%E6%BB%9A%E5%8A%A8%E8%BD%AE%E6%92%AD%E8%A7%86%E5%9B%BE.gif)

