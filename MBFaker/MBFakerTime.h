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
    kPeriodAll      ,
    kPeriodDay      ,
    kPeriodNight    ,
    kPeriodMorning  ,
    kPeriodAfternoon,
    kPeriodEvening  ,
    kPeriodMidnight
} Period;

@interface MBFakerTime : MBFakerDate

+ (NSDateComponents*)between:(NSDate*)from to:(NSDate*)to period:(Period) period;
+ (NSDateComponents*)forward:(NSUInteger)days period:(Period) period;
+ (NSDateComponents*)backward:(NSUInteger)days period:(Period) period;

@end
