//
//  ODDonationViewController.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/24/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODDonationViewController.h"

@interface ODDonationViewController ()
@property (weak,nonatomic) UIImage * nfImage;
@end

@implementation ODDonationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
}


#pragma mark - Init
-(void)initWithNFImage:(UIImage *)image {
    self.nfImage = image;
    
    //TODO: call SERVER to validate
}

@end
