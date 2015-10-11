//
//  ODLabel.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/11/15.
//  Copyright (c) 2015 ong. All rights reserved.
//
#import "UIFont+ODFonts.h"
#import "UIColor+ODColors.h"
#import "ODLabel.h"

@implementation ODLabel

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
    [self setTextColor:[UIColor ODRedColor]];
    [self setFont:[UIFont ODButtonFont]];
}

@end
