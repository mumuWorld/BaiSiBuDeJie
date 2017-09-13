//
//  MMNavigationViewController.m
//  baisibudejie
//
//  Created by mumu on 2017/8/29.
//  Copyright © 2017年 mumu. All rights reserved.
//

#import "MMNavigationViewController.h"

@interface MMNavigationViewController ()<UIGestureRecognizerDelegate>

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

//统一设置返回按钮，需要监听导航控制器push操作，然后再下个控制器设置返回按钮
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) {
//        恢复滑动返回功能->分析：把系统的返回按钮覆盖->1.手势失效（1，手势被清空，2，可能有手势代理出问题）
        //设置返回按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemBackWithNormalImg:@"navigationButtonReturn" highImg:@"navigationButtonReturnClick" Target:self action:@selector(back) title:@"返回"];
//        NSLog(@"pan=%@",self.interactivePopGestureRecognizer);
      /**
       pan=<UIScreenEdgePanGestureRecognizer: 0x7f9e52511240; state = Possible; enabled = NO; delaysTouchesBegan = YES; view = <UILayoutContainerView 0x7f9e5250f920>; target= <(action=handleNavigationTransition:, target=<_UINavigationInteractiveTransition 0x7f9e52510d20>)>>
       */
    }
    
    //真正的跳转
    [super pushViewController:viewController animated:animated];
}
- (void)back
{
    [self popViewControllerAnimated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    验证一下时候有代理
//    MLog(@"delegate=%@",self.interactivePopGestureRecognizer.delegate);
//    delegate=<_UINavigationInteractiveTransition
    
//    设置代理为nil 会使程序在跟控制器时造成假死状态，不可取，采用重写代理方法。
//    self.interactivePopGestureRecognizer.delegate = nil
//    self.interactivePopGestureRecognizer.delegate = self;
    
//    UIScreenEdgePanGestureRecognizer
//    为什么我们的导航控制器手势不是全屏滑动
//    全屏滑动返回优化
    UIPanGestureRecognizer *panGes = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:panGes];
    panGes.delegate = self;
//    禁止自己的边缘手势
    self.interactivePopGestureRecognizer.enabled = NO;

}
#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    return self.childViewControllers.count >1;
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
