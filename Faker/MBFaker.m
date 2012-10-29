//
//  MBFaker.m
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBFaker.h"

@implementation MBFaker

+ (NSArray*)availableLanguages {
    return [[MBFakerHelper translations] allKeys];
}

@end
