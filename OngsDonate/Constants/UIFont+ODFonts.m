//
//  UIFont+ODFonts.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/6/15.
//  Copyright (c) 2015 ong. All rights reserved.
//
#import "UIFont+ODFonts.h"

@implementation UIFont (ODFonts)

NSString *const kBaseFontFamily = @"FuturaLT-Light";
NSString *const kBaseBoldFontFamily = @"FuturaLT-Book";

NSInteger const kSmallFontSize = 16;
NSInteger const kLargeFontSize = 21;

+(UIFont *)ODTextFieldFont {
    return [UIFont fontWithName: kBaseFontFamily size: kSmallFontSize];
}

+(UIFont *)ODButtonFont {
    return [UIFont fontWithName: kBaseFontFamily size: kLargeFontSize];
}

+(UIFont *)ODBoldButtonFont {
    return [UIFont fontWithName: kBaseBoldFontFamily size: kLargeFontSize];
}

+(UIFont *)ODBoldLabelFont {
    return [UIFont fontWithName: kBaseBoldFontFamily size: kSmallFontSize];
}

+(UIFont *)ODLabelFont {
    return [UIFont fontWithName: kBaseFontFamily size: kSmallFontSize];
}

@end
