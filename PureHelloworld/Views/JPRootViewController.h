//
//  JPRootViewController.h
//  PureHelloworld
//
//  Created by Jacob Pan on 12-9-11.
//  Copyright (c) 2012年 Jacob Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JPLevel1ViewController;
@class JPMyViewController;

@interface JPRootViewController : UIViewController
{
    UIButton *button;
    UIButton *tableviewBtn;
    UIButton *navigationBtn;
    UIButton *TabbarBtn;
}

@property (strong, nonatomic) UINavigationController *narController;
@property (strong, nonatomic) UITabBarController *tabbarController;
@property (strong, nonatomic) JPLevel1ViewController *level1ViewController;
@property (strong, nonatomic) JPMyViewController *tableViewController;

@end
