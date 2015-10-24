//
//  NSString+ODStringUtils.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/24/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "NSString+ODStringUtils.h"

@implementation NSString (ODStringUtils)


#pragma mark - Number mask
+(NSString *) stringNumberMaskedFromDouble: (double) number {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle: NSNumberFormatterCurrencyStyle];
    NSString *formatted = [numberFormatter stringFromNumber:[NSNumber numberWithDouble:number]];
    
    return formatted;
}

+(double) doubleFromMaskedString: (NSString *) maskedNumber {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle: NSNumberFormatterCurrencyStyle];
    
    return [[numberFormatter numberFromString:maskedNumber] doubleValue];
}

#pragma mark - Date mask
+(NSString *) stringFormattedFromDate: (NSDate *) date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    
    return [dateFormatter stringFromDate:date];
}

+(NSDate *) dateFromFormattedString: (NSString *) formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    
    return [dateFormatter dateFromString:formattedDate];
}

#pragma mark - CNPJ mask
+(NSString *) stringCnpjMaskedFromString: (NSString *) cnpj{
    NSString *finalCnpj = [NSString stringWithFormat:@"%@.%@.%@/%@-%@",
                           [cnpj substringWithRange:NSMakeRange(0, 2)],
                           [cnpj substringWithRange:NSMakeRange(2, 3)],
                           [cnpj substringWithRange:NSMakeRange(5, 3)],
                           [cnpj substringWithRange:NSMakeRange(8, 4)],
                           [cnpj substringWithRange:NSMakeRange(12, 2)]];
    
    return finalCnpj;
}

+(NSString *) removeCnpjMask: (NSString *) maskedCnpj {
    maskedCnpj = [maskedCnpj stringByReplacingOccurrencesOfString:@"." withString:@""];
    maskedCnpj = [maskedCnpj stringByReplacingOccurrencesOfString:@"/" withString:@""];
    maskedCnpj = [maskedCnpj stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    return maskedCnpj;
}

@end
