//
//  ODInitialViewController.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 9/11/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODInitialViewController.h"

@interface ODInitialViewController ()

@end

@implementation ODInitialViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
