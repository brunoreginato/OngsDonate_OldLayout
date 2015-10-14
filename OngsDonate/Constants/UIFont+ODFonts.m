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

NSInteger const kMicroFontSize = 12;
NSInteger const kSmallFontSize = 16;
NSInteger const kMediumFontSize = 18;
NSInteger const kLargeFontSize = 21;

//Normal text
+(UIFont *) ODMicroText{
    return [UIFont fontWithName:kBaseFontFamily size:kMicroFontSize];
}

+(UIFont *) ODSmallText{
    return [UIFont fontWithName:kBaseFontFamily size:kSmallFontSize];
}

+(UIFont *) ODMediumText{
    return [UIFont fontWithName:kBaseFontFamily size:kMediumFontSize];
}

+(UIFont *) ODLargeText{
    return [UIFont fontWithName:kBaseFontFamily size:kLargeFontSize];
}

//Bold Font
+(UIFont *) ODMicroBoldText{
    return [UIFont fontWithName:kBaseBoldFontFamily size:kMicroFontSize];
}

+(UIFont *) ODSmallBoldText{
    return [UIFont fontWithName:kBaseBoldFontFamily size:kSmallFontSize];
}

+(UIFont *) ODMediumBoldText{
    return [UIFont fontWithName:kBaseBoldFontFamily size:kMediumFontSize];
}

+(UIFont *) ODLargeBoldText{
    return [UIFont fontWithName:kBaseBoldFontFamily size:kLargeFontSize];
}


@end
