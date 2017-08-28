//
//  MMNavigationViewController.m
//  baisibudejie
//
//  Created by mumu on 2017/8/29.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "MMNavigationViewController.h"

@interface MMNavigationViewController ()

@end

@implementation MMNavigationViewController
+ (void)load
{
    //注意这里一定要是自己的类。
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[MMNavigationViewController class]]];
    NSMutableDictionary *attrs =  [NSMutableDictionary new];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    
    // 只要是通过模型设置,都是通过富文本设置
    //    设置导航栏标题=》UINavigationbar，
    [navBar setTitleTextAttributes:attrs];
    //必须要用default 
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
