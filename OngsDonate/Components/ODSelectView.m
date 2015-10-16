//
//  ODSelectView.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/16/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODSelectView.h"

@implementation ODSelectView

-(void)awakeFromNib{
    [super awakeFromNib];
    
    [self setup];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)setup {
    [self setupBorder];
}

-(void)setupBorder {
    [self.layer setBorderWidth:0.5f];
    [self.layer setBorderColor:[UIColor whiteColor].CGColor];
}

@end
