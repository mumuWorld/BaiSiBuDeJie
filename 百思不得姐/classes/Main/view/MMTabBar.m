//
//  MMTabBar.m
//  baisibudejie
//
//  Created by mumu on 2017/8/15.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "MMTabBar.h"

@interface MMTabBar()

@property(nonatomic,weak) UIButton *plusBtn;

@end

@implementation MMTabBar

/**
 懒加载方式加载plus btn。

 @return <#return value description#>
 */
- (UIButton *)plusBtn
{
    if (!_plusBtn) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [button setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        
        [button setImage:[UIImage imageNamed:@"tabBar_publish_icon_click"] forState:UIControlStateHighlighted];
//        让button frame 自适应 和image大小一样
        [button sizeToFit];
        
        _plusBtn = button;
        
        [self addSubview:_plusBtn];
    }
    return _plusBtn;
    
}
//把tabbar平均分成 5等份，把加号按妞放到中间。
//由于layoutsubviews 方法调用频率很高，所以把 plus按钮做成懒加载，这样只需要加载一次plus按钮。
- (void)layoutSubviews
{
    [super layoutSubviews];
//    布局tabbar button
    NSLog(@"subview=%@",self.subviews);
//    items属性记录着 tabbar里面一共有多少个按钮
    NSUInteger count = self.items.count +1;
    CGFloat btnW = self.frame.size.width/count;
    CGFloat btnH = self.frame.size.height;
    
    NSInteger number = 0;
    for (UIView *tabbarButton in self.subviews) {
        //当一个类 没有代码提示的时候那一定是系统的私有类，只能通过下面的方法 访问class
        if ([tabbarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (number==2) {
                number++;
            }
            tabbarButton.frame = CGRectMake(btnW*number, 0, btnW, btnH);
            number ++;
        }
    }
//    调整发布按钮的center
    self.plusBtn.center = CGPointMake(self.frame.size.width *0.5, btnH *0.5);
    
}

@end
