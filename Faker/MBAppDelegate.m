//
//  MBAppDelegate.m
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBAppDelegate.h"
#import "MBFaker.h"

@implementation MBAppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
//    NSArray* arr = [[NSBundle mainBundle] pathsForResourcesOfType:@"yaml" inDirectory:@""];
//    NSLog(@"%@", [[arr objectAtIndex:0] class]);
//    
//    NSInputStream *stream = [[NSInputStream alloc] initWithFileAtPath: [[NSBundle mainBundle] pathsForResourcesOfType:@"yaml" inDirectory:@""]];
//
//    
//    NSMutableArray* yaml = [YAMLSerialization YAMLWithStream: stream
//                                        options: kYAMLReadOptionStringScalars
//                                              error: nil];
//    NSLog(@"%@", [[yaml objectAtIndex:0] class]);
    
//    NSMutableArray* arr = [[NSMutableArray alloc] init];
//    for (int i=0; i<100; i++)[ arr addObject:[MBFakerName firstName]];
//    
//    
//    NSLog(@"%@", arr);
    
//NSString* 
//    NSString* str = [[[[MBFakerHelper dictionaryForLanguage:@"en"] objectForKey:@"address"]objectForKey:@"city"] objectAtIndex:0];
//    
//    
//    
//    NSLog(@"%@", str);
//    
//    
//    NSArray* arr = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"{#}"]];
//    
//    NSMutableArray* arr2 = [[NSMutableArray alloc] init];
//    
//    for (NSString* str in arr) {
//        if ([str length] > 0)
//            [arr2 addObject:str];
//    }
//    NSLog(@"%@", arr2);
    
//    NSString* str = @"aaa";
//    
//    NSLog(@"%@", [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]]);
    
//    NSLog(@"%@", [MBFakerHelper dictionaryForLanguage:@"en"]);
//    
//    NSLog(@"%@", [MBFakerHelper fetchDataWithKey:@"name.first_name" withLanguage:@"en"]);
    [[MBFaker sharedFaker] setLanguage:@"en"];
    
    for (int i=0;i<10000 ;i++)
        NSLog(@"%@", [MBFakerLorem paragraphs]);

}

@end
