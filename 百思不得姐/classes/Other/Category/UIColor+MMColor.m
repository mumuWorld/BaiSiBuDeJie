//
//  UIColor+MMColor.m
//  baisibudejie
//
//  Created by mumu on 2017/8/24.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "UIColor+MMColor.h"

@implementation UIColor (MMColor)
+ (UIColor *)randomColor
{
    CGFloat red = arc4random()/INT_MAX;
    CGFloat green = arc4random()/INT_MAX;
    CGFloat blue = arc4random()/INT_MAX;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}
@end
