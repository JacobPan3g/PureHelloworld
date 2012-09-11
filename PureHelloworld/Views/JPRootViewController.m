//
//  JPRootViewController.m
//  PureHelloworld
//
//  Created by Jacob Pan on 12-9-11.
//  Copyright (c) 2012年 Jacob Pan. All rights reserved.
//

#import "JPRootViewController.h"

@interface JPRootViewController ()

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
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
    [label setText:@"Hello World!"];
    [label setTextAlignment:UITextAlignmentCenter];
    [label setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:label];
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

@end