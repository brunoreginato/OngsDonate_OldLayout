//
//  ODTextField.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 9/12/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODTextField.h"
#import "ODUIConstants.h"

@interface ODTextField()

@end

@implementation ODTextField

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
    [self setFont: [UIFont fontWithName: kFontFamily size: kTextFieldFontSize]];
    [self setTextColor: [UIColor ODRedColor]];
    
//    CALayer *bottomBorder = [CALayer layer];
//    
//    CGFloat y = 10.0f;
//    CGFloat w = 200.0f;
//    
//    bottomBorder.frame = CGRectMake(0.0f,y,w,1.0f);
//    bottomBorder.backgroundColor = [UIColor ODRedColor].CGColor;
//    
//    [self.layer addSublayer:bottomBorder];
    
    [self setupPlaceholder];
}

-(void)setupPlaceholder {
    if ([self.attributedPlaceholder length])
    {
        // Extract attributes
        NSDictionary * attributes = (NSMutableDictionary *)[ (NSAttributedString *)self.attributedPlaceholder attributesAtIndex:0 effectiveRange:NULL];
        
        NSMutableDictionary * newAttributes = [[NSMutableDictionary alloc] initWithDictionary:attributes];
        
        [newAttributes setObject:self.textColor forKey:NSForegroundColorAttributeName];
        [newAttributes setObject:self.font forKey:NSFontAttributeName];
        
        // Set new text with extracted attributes
        self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:[self.attributedPlaceholder string] attributes:newAttributes];
        
    }
}



@end
