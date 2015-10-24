//
//  ODDonation.h
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/24/15.
//  Copyright (c) 2015 ong. All rights reserved.
//
#import "ODTax.h"
#import "ODPerson.h"
#import "ODOng.h"

#import <Foundation/Foundation.h>

@interface ODDonation : NSObject

@property (strong,nonatomic) ODTax *tax;
@property (strong,nonatomic) ODPerson *donator;
@property (strong,nonatomic) ODOng *ong;
@property (strong,nonatomic) NSDate *date;

@end
