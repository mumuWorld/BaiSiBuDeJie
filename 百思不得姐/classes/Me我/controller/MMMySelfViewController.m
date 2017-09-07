//
//  MMMySelfViewController.m
//  baisibudejie
//
//  Created by mumu on 2017/8/14.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "MMMySelfViewController.h"
#import "MMSettingTableViewController.h"

@interface MMMySelfViewController ()

@end

@implementation MMMySelfViewController

/**
 搭建基本结构-> 设置底部条->设置顶部条->设置顶部条标题字体->处理导航控制器业务跳转
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor randomColor];
    [self setupNaviBarItem];

    // Do any additional setup after loading the view.
}
- (void)setupNaviBarItem
{
//    UIBarButtonItem *btnItem = [UITabBarItem itemWithImageName:@"nav_item_game_icon" with:@"nav_item_game_click_icon" Target:self action:@selector(leftBtnClick)];
    UIBarButtonItem *btnItem = [UITabBarItem itemStausWith:@"mine-moon-icon" with:@"mine-moon-icon-click" Target:self action:@selector(leftBtnClick:)];
    
    UIBarButtonItem *btnItem2 = [UITabBarItem itemWithImageName:@"mine-setting-icon" with:@"mine-setting-icon-click" Target:self action:@selector(rightBtnClick)];
    
    self.navigationItem.rightBarButtonItems = @[btnItem2,btnItem];
    self.navigationItem.title = @"我的";
//    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
//    设置导航栏标题 字体。要在UINavigationBar设置， 叫做富文本设置。

}
- (void)leftBtnClick:(UIButton *)btn
{
    btn.selected = !btn.selected;
}
- (void)rightBtnClick
{
    MMSettingTableViewController *setVC = [[MMSettingTableViewController alloc] init];
    //隐藏底部 tabbar
    setVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:setVC animated:YES];
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
