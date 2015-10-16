//
//  ODTabBarViewController.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/11/15.
//  Copyright (c) 2015 ong. All rights reserved.
//
#import "UIColor+ODColors.h"
#import "ODTabBarViewController.h"

@interface ODTabBarViewController ()

@end

@implementation ODTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
}

-(void)viewWillAppear:(BOOL)animated {
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setup {
    UITabBarItem * menuItem = self.tabBar.items[0];
    UITabBarItem * cameraItem = self.tabBar.items[1];
    UITabBarItem * profileItem = self.tabBar.items[2];
    
    UIEdgeInsets imageItemInset = UIEdgeInsetsMake(5,0,-5,0);
    
    //Menu Item
    menuItem.imageInsets = imageItemInset;
    menuItem.image = [[UIImage imageNamed:@"menu-gray"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    menuItem.selectedImage = [[UIImage imageNamed:@"menu-red"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //camera Item
    cameraItem.imageInsets = imageItemInset;
    cameraItem.image = [[UIImage imageNamed:@"camera-gray"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    cameraItem.selectedImage = [[UIImage imageNamed:@"camera-red"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //profile Item
    profileItem.imageInsets = imageItemInset;
    profileItem.image = [[UIImage imageNamed:@"profile-gray"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    profileItem.selectedImage = [[UIImage imageNamed:@"profile-red"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //background
    self.tabBar.backgroundColor = [UIColor ODGrayColor];
    self.tabBar.translucent = NO;
}

@end
