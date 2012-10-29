//
//  MBFakerName.h
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBFaker.h"

@interface MBFakerName : MBFaker

+ (NSString*)name;
+ (NSString*)firstName;
+ (NSString*)lastName;

@end
