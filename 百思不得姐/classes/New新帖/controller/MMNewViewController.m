//
//  MMNewViewController.m
//  baisibudejie
//
//  Created by mumu on 2017/8/14.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "MMNewViewController.h"

@interface MMNewViewController ()

@end

@implementation MMNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor randomColor];
    [self setupNaviBarItem];
    // Do any additional setup after loading the view.
}
- (void)setupNaviBarItem
{
    UIBarButtonItem *btnItem = [UIBarButtonItem itemWithImageName:@"nav_item_game_icon" with:@"nav_item_game_click_icon" Target:self action:@selector(leftBtnClick)];
    self.navigationItem.leftBarButtonItem = btnItem;
    
    UIBarButtonItem *btnItem2 = [UIBarButtonItem itemWithImageName:@"navigationButtonRandom" with:@"navigationButtonRandomClick" Target:self action:@selector(rightBtnClick)];
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
