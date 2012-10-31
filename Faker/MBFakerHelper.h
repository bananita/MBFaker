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
+ (NSArray*)fetchDataWithKey:(NSString*)key withLanguage:(NSString*)language;
+ (NSString*)fetchRandomElementWithKey:(NSString*)key withLanguage:(NSString*)language;
+ (NSString*)fetchDataWithTemplate:(NSString*)dataTemplate withLanguage:(NSString*)language;
+ (NSString*)numberWithTemplate:(NSString*)numberTemplate;

@end
