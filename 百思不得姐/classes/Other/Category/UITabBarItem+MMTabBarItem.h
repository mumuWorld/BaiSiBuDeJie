//
//  UITabBarItem+MMTabBarItem.h
//  baisibudejie
//
//  Created by mumu on 2017/8/24.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarItem (MMTabBarItem)
+ (UIBarButtonItem *)itemWithImageName:(NSString *)normalImg with:(NSString *)HighImg Target:(id)target action:(SEL)action;
/**
    设置选择状态item
 */
+ (UIBarButtonItem *)itemStausWith:(NSString *)normalImg with:(NSString *)OtherImg Target:(id)target action:(SEL)action;
@end
