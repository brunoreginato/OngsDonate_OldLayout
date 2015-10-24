//
//  ODHTTPSessionManager.m
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/24/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "ODHTTPSessionManager.h"

@implementation ODHTTPSessionManager

static NSString * const kTesseractServiceUrl = @"https://api.tesseract.com";
static NSString * const kOngsDonateServiceUrl = @"https://api.ongsdonate.com";

+ (instancetype)tesseractManager {
    static ODHTTPSessionManager *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *baseURL = [NSURL URLWithString:kTesseractServiceUrl];
        instance = [[ODHTTPSessionManager alloc] initWithBaseURL:baseURL];
    });
    
    return instance;
}

+ (instancetype)ongsDonateManager {
    static ODHTTPSessionManager *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *baseURL = [NSURL URLWithString:kOngsDonateServiceUrl];
        instance = [[ODHTTPSessionManager alloc] initWithBaseURL:baseURL];
    });
    
    return instance;
}

@end
