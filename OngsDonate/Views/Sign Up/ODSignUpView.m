//
//  ODSignUpView.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/10/15.
//  Copyright (c) 2015 ong. All rights reserved.
//
#import "ODUIConstants.h"
#import "ODSignUpView.h"

@implementation ODSignUpView

- (void)drawRect:(CGRect)rect {
    [self setupChooseImage];
}

-(void)setupChooseImage {
    [[self.choosePhotoView layer] setMasksToBounds:YES];
    [[self.choosePhotoView layer] setCornerRadius:self.choosePhotoView.frame.size.height/2];
    [[self.choosePhotoView layer] setBorderWidth:1.0f];
    [[self.choosePhotoView layer] setBorderColor:[UIColor ODRedColor].CGColor];
    
    
}

@end
