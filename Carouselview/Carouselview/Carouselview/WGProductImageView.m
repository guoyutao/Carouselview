//
//  WGProductImageView.m
//
//
//  Created by Mac on 15-3-7.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

//  Created by aspire on 16/3/8.
//  Copyright © 2016年 guoyutao. All rights reserved.
#import "WGProductImageView.h"
#import "UIImageView+WebCache.h"
#import "WGWebViewController.h"
@implementation WGProductImageView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addTap];
    }
    return self;
}
- (void)addTap {
    self.backgroundColor = [UIColor whiteColor];
    //给每个图片添加一个手势，点击进入相应的广告
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(makeNextConVc)];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:tap];
}
//给iamgeView添加广告图片
- (void)refresh {
    NSString *str = [self.dict objectForKey:@"imgurl"];
    [self sd_setImageWithURL:[NSURL URLWithString:str] placeholderImage:[UIImage imageNamed:@"placeholder_large"]];
}

- (void)makeNextConVc {
    if (self.dict != nil) {
         WGWebViewController*wgAdVc = [[WGWebViewController alloc]init];
        wgAdVc.title = [self.dict objectForKey:@"title"];
        wgAdVc.urlString = [self.dict objectForKey:@"jumpurl"];
        //判断后台传过来的跳转连接是否是空
        if (![wgAdVc.urlString isEqualToString:@""]) {
            [self.delegate pushAddViewController:wgAdVc];
        }
    }
}
@end
