//
//  ODHTTPSessionManager.h
//  OngsDonate
//
//  Created by Bruno Isola Reginato on 10/24/15.
//  Copyright (c) 2015 ong. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface ODHTTPSessionManager : AFHTTPSessionManager
+ (instancetype)ongsDonateManager;
+ (instancetype)tesseractManager;
@end
