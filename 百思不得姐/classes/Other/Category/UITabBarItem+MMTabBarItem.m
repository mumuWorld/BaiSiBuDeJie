//
//  UITabBarItem+MMTabBarItem.m
//  baisibudejie
//
//  Created by mumu on 2017/8/24.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "UITabBarItem+MMTabBarItem.h"

@implementation UITabBarItem (MMTabBarItem)
+ (UIBarButtonItem *)itemWithImageName:(NSString *)normalImg with:(NSString *)HighImg Target:(id)target action:(SEL)action
{
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:HighImg] forState:UIControlStateHighlighted];
    [leftBtn sizeToFit];
    [leftBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *contentView = [[UIView alloc] initWithFrame:leftBtn.bounds];
    [contentView addSubview:leftBtn];
    
    return [[UIBarButtonItem alloc] initWithCustomView:contentView];
}
@end
