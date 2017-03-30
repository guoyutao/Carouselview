//
//  GFIWebViewController.h
//  DataPool
//
//  Created by Yang on 2/18/15.
//  Copyright (c) 2015 GFI. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WGWebViewController : UIViewController<UIWebViewDelegate>

@property (nonatomic, copy) NSString *urlString;
@property (nonatomic, copy) NSString *title;

@end
