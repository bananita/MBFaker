//
//  MBFakerTime.h
//  MBFaker Demo
//
//  Created by Daniel Chong on 11/03/15.
//  Copyright (c) 2015 Michał Banasiak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBFakerDate.h"

typedef enum {
    kAll      ,
    kDay      ,
    kNight    ,
    kMorning  ,
    kAfternoon,
    kEvening  ,
    kMidnight
} Period;

@interface MBFakerTime : MBFakerDate

+ (NSDate*)between:(NSDate*)from to:(NSDate*)to period:(Period) period;
//+ (NSDate*)forward:(Period) period;
+ (NSDate*)forward:(NSUInteger)days period:(Period) period;
//+ (NSDate*)backward:(Period) period;
+ (NSDate*)backward:(NSUInteger)days period:(Period) period;

@end
