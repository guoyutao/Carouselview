//  Created by aspire on 16/3/8.
//  Copyright © 2016年 guoyutao. All rights reserved.

#import <UIKit/UIKit.h>

@protocol WGProductImageViewDelegate <NSObject>
@required
- (void)pushAddViewController:(UIViewController *)vc;

@end
@interface WGProductImageView : UIImageView

@property (nonatomic ,strong) NSDictionary *dict;
@property (nonatomic ,weak) id<WGProductImageViewDelegate>delegate;
- (void)refresh;
@end
