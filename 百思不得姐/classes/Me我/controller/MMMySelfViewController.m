//
//  MMMySelfViewController.m
//  baisibudejie
//
//  Created by mumu on 2017/8/14.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "MMMySelfViewController.h"

@interface MMMySelfViewController ()

@end

@implementation MMMySelfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor randomColor];
    [self setupNaviBarItem];
    // Do any additional setup after loading the view.
}
- (void)setupNaviBarItem
{
    UIBarButtonItem *btnItem = [UITabBarItem itemWithImageName:@"nav_item_game_icon" with:@"nav_item_game_click_icon" Target:self action:@selector(leftBtnClick)];
    self.navigationItem.leftBarButtonItem = btnItem;
    
    UIBarButtonItem *btnItem2 = [UITabBarItem itemWithImageName:@"navigationButtonRandom" with:@"navigationButtonRandomClick" Target:self action:@selector(rightBtnClick)];
    
    self.navigationItem.rightBarButtonItems = @[btnItem,btnItem2];
    self.navigationItem.title = @"我的";
//    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
//    设置导航栏标题 字体。要在UINavigationBar设置， 叫做富文本设置。

}
- (void)leftBtnClick
{
    MMfunc;
}
- (void)rightBtnClick
{
    MMfunc;
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
