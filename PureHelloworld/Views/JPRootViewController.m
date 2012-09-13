//
//  JPRootViewController.m
//  PureHelloworld
//
//  Created by Jacob Pan on 12-9-11.
//  Copyright (c) 2012年 Jacob Pan. All rights reserved.
//

#import "JPRootViewController.h"
#import "JPLevel1ViewController.h"
#import "JPMyViewController.h"

@interface JPRootViewController ()

- (void)buttonAction;
- (void)tableviewBtnPressed;
- (void)navigationBtnPressed;
- (void)tabbarBtnPressed;

@end

@implementation JPRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //加入HelloWorld Label
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(320/2-50, 0, 100, 50)];
    [label setText:@"Hello World!"];
    [label setTextAlignment:UITextAlignmentCenter];
    [label setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:label];
    
    //加入测试按钮
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 160, 50)];
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(320/2-50, 480/2-30, 100, 30)];
    
    [button setTitle:@"Hello!" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    /* 页面转换，Tableview, TabbarView, NavigationView */

    //加入navigationBtn
    navigationBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [navigationBtn setFrame:CGRectMake(20, 60, 100, 40)];
    [navigationBtn setTitle:@"Navigation" forState:UIControlStateNormal];
    [navigationBtn addTarget:self action:@selector(navigationBtnPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:navigationBtn];
    
    //加入NavigationView
    self.level1ViewController = [[JPLevel1ViewController alloc] init];
    self.level1ViewController.title = @"Level 1";
    self.narController = [[UINavigationController alloc] initWithRootViewController:self.level1ViewController];
    
    //加入TableViewBtn
    tableviewBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [tableviewBtn setFrame:CGRectMake(200, 60, 100, 40)];
    [tableviewBtn setTitle:@"TableView" forState:UIControlStateNormal];
    [tableviewBtn addTarget:self action:@selector(tableviewBtnPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tableviewBtn];
    
    //加入TableView
    self.tableViewController = [[JPMyViewController alloc] initWithStyle:UITableViewScrollPositionNone];
    
    //加入TabbarBtn
    TabbarBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [TabbarBtn setFrame:CGRectMake(20, 120, 100, 40)];
    [TabbarBtn setTitle:@"TabbarView" forState:UIControlStateNormal];
    [TabbarBtn addTarget:self action:@selector(tabbarBtnPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:TabbarBtn];
    
    //加入TabbarView
    self.tabbarController = [[UITabBarController alloc] init];
    //self.tabbarController
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)buttonAction
{
    NSLog(@"Hey!");
}

- (void)navigationBtnPressed
{
    NSLog(@"Hello!");
    [self presentModalViewController:self.narController animated:YES];
}

- (void)tableviewBtnPressed
{
    [self presentModalViewController:self.tableViewController animated:YES];
    [self.tableViewController.tableView setFrame:CGRectMake(0, 100, 320, 380)];
}

- (void)tabbarBtnPressed
{
    //定制tabbar图片
    self.level1ViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"first" image:[UIImage imageNamed:@"Icon.png"] tag:1];
    
    NSArray *arr = [[NSArray alloc] initWithObjects:self.level1ViewController, self.tableViewController, nil ];
    self.tabbarController.viewControllers = arr;
    [self presentModalViewController:self.tabbarController animated:YES];
}

@end
