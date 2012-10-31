//
//  MBFakerName.m
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBFakerName.h"

@implementation MBFakerName

+ (NSString*)name {
    
}

+ (NSString*)firstName {
    NSArray* namesArray = [[MBFakerHelper fetchDataWithKey:@"name" withLanguage:@"en"] objectForKey:@"first_name"];
    
    NSInteger randomIndex = arc4random() % [namesArray count];
    
    return [namesArray objectAtIndex:randomIndex];
}

+ (NSString*)lastName {
    NSArray* namesArray = [[MBFakerHelper fetchDataWithKey:@"name" withLanguage:@"en"] objectForKey:@"last_name"];
    
    NSInteger randomIndex = arc4random() % [namesArray count];
    
    return [namesArray objectAtIndex:randomIndex];
}

@end
