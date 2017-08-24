//
//  MMEssenceViewController.m
//  百思不得姐
//
//  Created by mumu on 2017/8/12.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "MMEssenceViewController.h"

@interface MMEssenceViewController ()

@end

@implementation MMEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor randomColor];
    [self setupNaviBarItem];
//    MMfunc;
//    UIButton 包装成UIBarButtonItem 会导致按钮区域变大。
    
    // Do any additional setup after loading the view.
}
- (void)setupNaviBarItem
{
    UIBarButtonItem *btnItem = [UITabBarItem itemWithImageName:@"nav_item_game_icon" with:@"nav_item_game_click_icon" Target:self action:@selector(leftBtnClick)];
    self.navigationItem.leftBarButtonItem = btnItem;
    
    UIBarButtonItem *btnItem2 = [UITabBarItem itemWithImageName:@"navigationButtonRandom" with:@"navigationButtonRandomClick" Target:self action:@selector(rightBtnClick)];
    self.navigationItem.rightBarButtonItem = btnItem2;
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
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
