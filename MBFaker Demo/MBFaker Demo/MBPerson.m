//
//  MBPerson.m
//  MBFaker Demo
//
//  Created by Michał Banasiak on 11/9/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBPerson.h"
#import "MBFaker.h"

@implementation MBPerson

+ (MBPerson*)personWithFakeData {
    MBPerson* person = [[MBPerson alloc] init];
    
    person.name = [MBFakerName name];
    person.email = [MBFakerInternet freeEmail];
    person.address = [MBFakerAddress streetAddress];
    person.zipCode = [MBFakerAddress zipCode];
    person.city = [MBFakerAddress city];
    person.lorem = [MBFakerLorem sentences:2];
    
    return person;
}

@end
