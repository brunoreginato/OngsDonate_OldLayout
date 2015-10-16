//
//  ODUnderlinedLabel.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/16/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODUnderlinedLabel.h"

@implementation ODUnderlinedLabel
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

-(void) setupBorder {
    UIView *bottomBorder = [[UIView alloc] init];
    
    CGFloat y = self.frame.size.height - 0.5f;
    CGFloat w = self.frame.size.width;
    
    bottomBorder.frame = CGRectMake(0.0f,y,w,0.5f);
    bottomBorder.backgroundColor = [UIColor whiteColor];
    
    [self addSubview:bottomBorder];
    
}

@end
