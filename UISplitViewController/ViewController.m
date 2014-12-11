//
//  ViewController.m
//  UISplitViewController
//
//  Created by luo on 14-11-23.
//  Copyright (c) 2014年 luo. All rights reserved.
//

#import "ViewController.h"
#import "FirstSplitViewController.h"

@interface ViewController ()
- (IBAction)pushToSplitVC;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushToSplitVC {
    
    FirstSplitViewController *firstVC = [[FirstSplitViewController alloc] initWithNibName:nil bundle:nil];
    [self.view.window setRootViewController:firstVC];
}
@end
