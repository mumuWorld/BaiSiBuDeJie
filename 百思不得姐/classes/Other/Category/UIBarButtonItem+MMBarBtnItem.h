//
//  UIBarButtonItem+MMBarBtnItem.h
//  baisibudejie
//
//  Created by mumu on 2017/9/7.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (MMBarBtnItem)
//设置带有高亮状态的item
+ (UIBarButtonItem *)itemWithImageName:(NSString *)normalImg with:(NSString *)HighImg Target:(id)target action:(SEL)action;
/**
 设置选择状态的item
 */
+ (UIBarButtonItem *)itemStausWith:(NSString *)normalImg with:(NSString *)OtherImg Target:(id)target action:(SEL)action;

/**
 设置返回按钮
 
 */
+ (UIBarButtonItem *)itemBackWithNormalImg:(NSString *)normalImg highImg:(NSString *)highlightImg Target:(id)target action:(SEL)action title:(NSString *)title;
@end
