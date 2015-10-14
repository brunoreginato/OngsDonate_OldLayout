//
//  ODTextField.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 9/12/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODTextField.h"
#import "UIFont+ODFonts.h"
#import "UIColor+ODColors.h"

@interface ODTextField()
@property UILabel *placeholderLabel;
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
        
    }
    return self;
}

-(void)setup {
    [self setFont: [UIFont ODSmallText]];
    [self setTextColor: [UIColor ODRedColor]];
    self.delegate = self;
    
    [self setupBorder];
    [self setupPlaceholder];
}

-(void) setupBorder {
    [self setBorderStyle:UITextBorderStyleNone];
    
    CALayer *bottomBorder = [CALayer layer];
    
    CGFloat y = self.frame.size.height - 0.5f;
    CGFloat w = self.frame.size.width;
    
    bottomBorder.frame = CGRectMake(0.0f,y,w,0.5f);
    bottomBorder.backgroundColor = [UIColor ODRedColor].CGColor;
    
    [self.layer addSublayer:bottomBorder];

}

-(void)setupPlaceholder {
    self.placeholderLabel = [[UILabel alloc] init];
    [self.placeholderLabel setText:self.placeholder];
    [self.placeholderLabel setTextColor:[UIColor ODRedColor]];
    
    [self addSubview:self.placeholderLabel];
    self.placeholder = @"";
    
    [self animatePlaceHolder];
}

-(void) setupPlaceholderStateNormal {
    [self.placeholderLabel setFrame:CGRectMake(0, 5, self.frame.size.width, self.frame.size.height)];
    [self.placeholderLabel setFont:[UIFont ODSmallText]];
}

-(void) setupPlaceholderStateFocused {
    [self.placeholderLabel setFrame:CGRectMake(0, 0, self.frame.size.width, 10.0f)];
    [self.placeholderLabel setFont:[UIFont ODMicroText]];
}

-(void) animatePlaceHolder {
    [UIView animateWithDuration:0.2f animations:^{
        if(![self.text isEqualToString:@""] || self.isFirstResponder) {
            [self setupPlaceholderStateFocused];
        } else {
            [self setupPlaceholderStateNormal];
        }
    }];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [self animatePlaceHolder];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self animatePlaceHolder];
}



@end
