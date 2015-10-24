//
//  ODTax.h
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/24/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ODTax : NSObject

@property (strong, nonatomic) NSString* cnpj;
@property (strong, nonatomic) NSString* coo;
@property (strong, nonatomic) NSDate* date;
@property (nonatomic) double total;

@end
