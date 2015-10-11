//
//  ODProfileImage.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/11/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODProfileImage.h"

@implementation ODProfileImage
-(void)awakeFromNib{
    [super awakeFromNib];
    
    [self setup];
}

-(void)setup {
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:self.frame.size.height/2];
}

@end
