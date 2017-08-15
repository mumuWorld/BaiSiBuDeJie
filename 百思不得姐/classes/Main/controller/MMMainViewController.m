//
//  MMMainViewController.m
//  baisibudejie
//
//  Created by mumu on 2017/8/14.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "MMMainViewController.h"
#import "MMEssenceViewController.h"
#import "MMNewViewController.h"
#import "MMFocusViewController.h"
#import "MMMySelfViewController.h"
#import "MMPublishViewController.h"
#import "MMTabBar.h"
@interface MMMainViewController ()

@end

@implementation MMMainViewController
//只调用一次
+ (void)load
{
    /*  appearance: 
     1 只要遵守了UIAppearance ，实现这个方法，就可以调用
     2 哪些属性可以通过appearance设置，只有被 UI_APPEARANCE_SELECTOR 宏修饰的属性 才可以设置。
     3 只有在控件显示之前设置，才有作用，
     作用场景 ： 批量修改控件属性，  夜间模式。
     */
    
//    获取整个应用程序下的UITabbarItem,为了防止修改其他tabbar item，不采用。
//    UITabBarItem * item = [UITabBarItem appearance];
//    UITabBarItem *item2 = [UITabBarItem appearanceWhenContainedIn:self, nil];
    UITabBarItem *item3 = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[[MMMainViewController class]] ];
//     [[UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[UITabBarController class], [UISplitViewController class]]] setBarTintColor:myTabbedNavBarColor];
//    创建一个描述性的字典
    NSMutableDictionary *attribute = [NSMutableDictionary dictionary];
//    设置字体颜色
    attribute[NSForegroundColorAttributeName] = [UIColor blackColor];
    
    [item3 setTitleTextAttributes:attribute forState:UIControlStateSelected];
    //    创建一个描述性的字典
    NSMutableDictionary *attribute2 = [NSMutableDictionary dictionary];
    //    设置字体大小  只有正常状态才有效。
    attribute2[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    
    [item3 setTitleTextAttributes:attribute2 forState:UIControlStateNormal];
    //会崩溃
//    item3.title = @"test";
    
}
//可能会调用多次，需要做一下判断
//+ (void)initialize
//{
//    if (self == [MMMainViewController class]) {
//        
//    }
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTabBar];
    
    [self addChildVC];

    [self setChildVCItem];

    MLog(@"tmp =");

}
- (void)setupTabBar
{
    MMTabBar *mTabBar = [[MMTabBar alloc] init];
    //只读属性不可修改， 可以通过kvc 或者runtime修改。
//    self.tabBar = mTabBar;
    [self setValue:mTabBar forKeyPath:@"tabBar"];
    MLog(@"mtabbar=%@",self.tabBar);
    
}
- (void)addChildVC
{
    MMEssenceViewController *essenceVC = [[MMEssenceViewController alloc] init];
    UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:essenceVC];
    [self addChildViewController:navCtrl];
    
    MMFocusViewController *focusVC = [[MMFocusViewController alloc] init];
    UINavigationController *navCtrl2 = [[UINavigationController alloc] initWithRootViewController:focusVC];
    [self addChildViewController:navCtrl2];
    
    MMPublishViewController *publishVC = [[MMPublishViewController alloc] init];
    [self addChildViewController:publishVC];
    
    MMNewViewController *newVC = [[MMNewViewController alloc] init];
    UINavigationController *navCtrl3 = [[UINavigationController alloc] initWithRootViewController:newVC];
    [self addChildViewController:navCtrl3];
    
    MMMySelfViewController *myselfVC = [[MMMySelfViewController alloc] init];
    UINavigationController *navCtrl4 = [[UINavigationController alloc] initWithRootViewController:myselfVC];
    [self addChildViewController:navCtrl4];
}

/**
 设置所有子控件的item
 */
- (void)setChildVCItem
{
    UINavigationController *navCtrl = self.childViewControllers[0];
    navCtrl.tabBarItem.title = @"精华";
    [navCtrl.tabBarItem setImage:[UIImage imageNamed:@"tabBar_essence_icon"]];
    [navCtrl.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabBar_essence_click_icon"]];
    //设置item title 的属性
    //设置按钮选中标题的颜色，富文本，描述一个文字颜色，字体，阴影，空心，图文混排。
//    优化在load用方法修改
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    dict[NSForegroundColorAttributeName] = [UIColor blackColor];
//    [navCtrl.tabBarItem setTitleTextAttributes:dict forState:UIControlStateSelected];
//    [navCtrl.tabBarItem setBadgeTextAttributes: forState:
    
    UINavigationController *navCtrl1 = self.childViewControllers[1];
    navCtrl1.tabBarItem.title = @"新帖";
    [navCtrl1.tabBarItem setImage:[UIImage imageNamed:@"tabBar_new_icon"]];
    [navCtrl1.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabBar_new_click_icon"]];
    UIViewController *vcCtrl = self.childViewControllers[2];
//    vcCtrl.tabBarItem.title = @"发布";
    [vcCtrl.tabBarItem setImage:[UIImage imageNamed:@"tabBar_publish_icon"]];
    [vcCtrl.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabBar_publish_click_icon"]];
    //发布按钮太大，调整 但无法达到高亮状态，所以要自定义。
//    自定义tabbar按钮思路： 调整系统tabbar上按钮位置，平均分成5等分，再把加号按钮显示在中间就好了。
//    tabbar按钮位置有系统决定，我们自己不能决定，=》调整系统自带子控件位置=>自定义tabbar。
//    验证一下系统什么时候把tabbar Button加到 self.tabar上面
    vcCtrl.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    UINavigationController *navCtrl2 = self.childViewControllers[3];
    navCtrl2.tabBarItem.title = @"关注";
    [navCtrl2.tabBarItem setImage:[UIImage imageNamed:@"tabBar_friendTrends_icon"]];
    [navCtrl2.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"]];
    
    UINavigationController *navCtr3 = self.childViewControllers[4];
    navCtr3.tabBarItem.title = @"我";
    [navCtr3.tabBarItem setImage:[UIImage imageNamed:@"tabBar_me_icon"]];
    [navCtr3.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabBar_me_click_icon"]];
//    第二种方法设置图片的渲染模式
    //    UIImage *image = [UIImage imageNamed:@"tabBar_essence_icon"];
    //    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
