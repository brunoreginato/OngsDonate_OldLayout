//
//  ODBoldButton.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/10/15.
//  Copyright (c) 2015 ong. All rights reserved.
//
#import "ODUIConstants.h"
#import "ODBoldButton.h"

@implementation ODBoldButton

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
    [[self titleLabel] setFont: [UIFont ODBoldButtonFont]];
}

@end
