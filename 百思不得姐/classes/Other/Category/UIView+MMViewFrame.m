//
//  UIView+MMViewFrame.m
//  baisibudejie
//
//  Created by mumu on 2017/8/22.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "UIView+MMViewFrame.h"

@implementation UIView (MMViewFrame)

- (void)setMm_hight:(CGFloat)mm_hight
{
    CGRect rect = self.frame;
    rect.size.height = mm_hight;
    self.frame = rect;
}
- (CGFloat)mm_hight
{
    return self.frame.size.height;
}
- (void)setMm_Weight:(CGFloat)mm_weight
{
    CGRect rect = self.frame;
    rect.size.width = mm_weight;
    self.frame = rect;
}
- (CGFloat)mm_weight
{
    return self.frame.size.width;
}
- (void)setMm_x:(CGFloat)mm_x
{
    CGRect rect = self.frame;
    rect.origin.x = mm_x;
    self.frame = rect;
}
- (CGFloat)mm_x
{
    return self.frame.origin.x;
}
- (void)setMm_y:(CGFloat)mm_y
{
    CGRect rect = self.frame;
    rect.origin.y = mm_y;
    self.frame = rect;
}
- (CGFloat)mm_y
{
    return self.frame.origin.y;
}
@end
