//
//  MBPerson.h
//  MBFaker Demo
//
//  Created by Michał Banasiak on 11/9/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBPerson : NSObject

+ (MBPerson*)personWithFakeData;

@property(nonatomic,copy)NSString* name;
@property(nonatomic,copy)NSString* email;
@property(nonatomic,copy)NSString* address;
@property(nonatomic,copy)NSString* zipCode;
@property(nonatomic,copy)NSString* city;
@property(nonatomic,copy)NSString* lorem;

@end
