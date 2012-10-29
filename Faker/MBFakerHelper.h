//
//  MBFakerHelper.h
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFakerHelper : NSObject

+ (NSDictionary*)translations;
+ (NSDictionary*)dictionaryForLanguage:(NSString*)language;
+ (NSDictionary*)fetchDataType:(NSString*)key withLanguage:(NSString*)language;

@end
