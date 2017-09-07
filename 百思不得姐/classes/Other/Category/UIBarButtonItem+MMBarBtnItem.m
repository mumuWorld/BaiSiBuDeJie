//
//  UIBarButtonItem+MMBarBtnItem.m
//  baisibudejie
//
//  Created by mumu on 2017/9/7.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "UIBarButtonItem+MMBarBtnItem.h"

@implementation UIBarButtonItem (MMBarBtnItem)
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

+ (UIBarButtonItem *)itemStausWith:(NSString *)normalImg with:(NSString *)OtherImg Target:(id)target action:(SEL)action
{
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:OtherImg] forState:UIControlStateSelected];
    [leftBtn sizeToFit];
    [leftBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *contentView = [[UIView alloc] initWithFrame:leftBtn.bounds];
    [contentView addSubview:leftBtn];
    
    return [[UIBarButtonItem alloc] initWithCustomView:contentView];
}

+ (UIBarButtonItem *)itemBackWithNormalImg:(NSString *)normalImg highImg:(NSString *)highlightImg Target:(id)target action:(SEL)action title:(NSString *)title
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highlightImg] forState:UIControlStateHighlighted];
    [btn sizeToFit];
    //设置返回按钮位置，内容向左移动-20
    [btn setContentEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIView *view = [[UIView alloc] initWithFrame:btn.bounds];
    [view addSubview:btn];
    
    return  [[UIBarButtonItem alloc] initWithCustomView:view];
}

@end
