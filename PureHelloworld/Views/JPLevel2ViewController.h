//
//  JPLevel2ViewController.h
//  PureHelloworld
//
//  Created by Jacob Pan on 12-9-12.
//  Copyright (c) 2012年 Jacob Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JPLevel3ViewController;

@interface JPLevel2ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) JPLevel3ViewController *level3ViewController;

@end
