//
//  ODButton.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 9/13/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODButton.h"
#import "ODUIConstants.h"

@implementation ODButton


-(void)awakeFromNib{
    [super awakeFromNib];
    
    [self setup];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setup {
    [self setTitleColor:[UIColor ODRedColor] forState:UIControlStateNormal];
    [[self titleLabel] setFont:[UIFont fontWithName:kFontFamily size:kButtonFontSize]];
//    [[self titleLabel] setTintColor:[UIColor ODRedColor]];
}


@end
