//
//  FirstSplitViewController.m
//  UISplitViewController
//
//  Created by luo on 14-11-23.
//  Copyright (c) 2014年 luo. All rights reserved.
//

#import "FirstSplitViewController.h"
#import "FirstRootViewController.h"
#import "FirstDetailViewController.h"

@interface FirstSplitViewController ()

@end

@implementation FirstSplitViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        FirstRootViewController *firstRootViewCtrl = [[FirstRootViewController alloc] init];
        FirstDetailViewController *firstDetailViewCtrl = [[FirstDetailViewController alloc] init];
        UINavigationController *firstRootNav =[[UINavigationController alloc] initWithRootViewController:firstRootViewCtrl];
        UINavigationController *firstDetailNav = [[UINavigationController alloc] initWithRootViewController:firstDetailViewCtrl];
        self.viewControllers = @[firstRootNav, firstDetailNav];
        //使用UISplitViewController前，第一步要做的是设置ViewControllers数组，再设置控制器的其他属性
         self.delegate = self;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

#pragma mask UISplitViewControllerDelegate

//隐藏master窗口调用  (当隐藏master窗口时，执行该方法)
- (void)splitViewController:(UISplitViewController *)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem *)barButtonItem
       forPopoverController:(UIPopoverController *)pc {
    NSLog(@"隐藏master窗口");
}

//显示master窗口调用 （当显示master窗口时，执行该方法）
- (void)splitViewController:(UISplitViewController *)svc
     willShowViewController:(UIViewController *)aViewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
    NSLog(@"显示master窗口");
}

//master窗口作为浮动窗口显示 （浮动显示：就是把原来没有的master视图拉出来）
- (void)splitViewController:(UISplitViewController *)svc
          popoverController:(UIPopoverController *)pc
  willPresentViewController:(UIViewController *)aViewController {
    NSLog(@"浮动显示");
}

//返回NO:显示master窗口, YES:隐藏master窗口
//如果此协议方法不实现，则横屏Master窗口显示，竖屏隐藏Master窗口
- (BOOL)splitViewController:(UISplitViewController *)svc
   shouldHideViewController:(UIViewController *)vc
              inOrientation:(UIInterfaceOrientation)orientation {
    return NO;
}

@end
