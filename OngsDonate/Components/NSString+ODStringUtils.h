//
//  NSString+ODStringUtils.h
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/24/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ODStringUtils)

//Monetery mask
+(NSString *) stringNumberMaskedFromDouble: (double) number;
+(double) doubleFromMaskedString: (NSString *) maskedNumber;

//Date format
+(NSString *) stringFormattedFromDate: (NSDate *) date;
+(NSDate *) dateFromFormattedString: (NSString *) formattedDate;

//Cnpj format
+(NSString *) stringCnpjMaskedFromString: (NSString *) cnpj;
+(NSString *) removeCnpjMask: (NSString *) maskedCnpj;

@end
