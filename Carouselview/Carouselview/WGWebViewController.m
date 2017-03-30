//
//  GFIWebViewController.m
//  DataPool
//
//  Created by Yang on 2/18/15.
//  Copyright (c) 2015 GFI. All rights reserved.
//

#import "WGWebViewController.h"

#define iphone6ShareHeightWeb 196
#define iphone5ShareHeightWeb 170
#define iphone6pShareHeightWeb 220


@interface WGWebViewController (){
    NSMutableURLRequest *_requestUrl;
    UIWebView *_webview;
}

@end

@implementation WGWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    _webview = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-64)];
    
    
    [self.view addSubview:_webview];
    // Do any additional setup after loading the view.
    [self _loadWebViewAtUrl:self.urlString];
    
    /**add by yangyiyang at 20150807 for webview 显示 分享*/
    
    
}

- (void)_loadWebViewAtUrl:(NSString *) url{
    if (_webview.loading) [_webview stopLoading];
    NSLog(@"------%@",url);
    _requestUrl =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [_webview loadRequest:_requestUrl];
    
}

- (void)_returnHome:(NSNotification *) notification{
    self.tabBarController.selectedIndex = 0;
    [self.navigationController popToRootViewControllerAnimated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
