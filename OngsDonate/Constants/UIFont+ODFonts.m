//
//  UIFont+ODFonts.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/6/15.
//  Copyright (c) 2015 ong. All rights reserved.
//
#import "ODUIConstants.h"
#import "UIFont+ODFonts.h"

@implementation UIFont (ODFonts)

+(UIFont *)ODTextFieldFont {
    return [UIFont fontWithName: kFontFamilyTextField size: kTextFieldFontSize];
}

+(UIFont *)ODButtonFont {
    return [UIFont fontWithName: kFontFamilyButton size: kButtonFontSize];
}

+(UIFont *)ODBoldButtonFont {
    return [UIFont fontWithName: kFontFamilyBoldButton size: kButtonFontSize];
}

@end
