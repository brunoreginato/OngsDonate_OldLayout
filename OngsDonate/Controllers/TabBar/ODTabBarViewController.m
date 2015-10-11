//
//  ODTabBarViewController.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/11/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODTabBarViewController.h"

@interface ODTabBarViewController ()

@end

@implementation ODTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated {
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
