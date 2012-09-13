//
//  JPLevel1ViewController.h
//  PureHelloworld
//
//  Created by Jacob Pan on 12-9-12.
//  Copyright (c) 2012年 Jacob Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JPLevel2ViewController;

@interface JPLevel1ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) JPLevel2ViewController *level2ViewController;

@end
