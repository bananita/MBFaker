//
//  MBTableCell.h
//  MBFaker Demo
//
//  Created by Michał Banasiak on 11/9/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBPerson.h"

@interface MBTableCell : UITableViewCell

+ (MBTableCell*)tableCell;

- (void)setPerson:(MBPerson*)person;

@property (strong, nonatomic) IBOutlet UILabel *labelName;
@property (strong, nonatomic) IBOutlet UILabel *labelEmail;
@property (strong, nonatomic) IBOutlet UILabel *labelAddress;
@property (strong, nonatomic) IBOutlet UILabel *labelZipCode;
@property (strong, nonatomic) IBOutlet UILabel *labelCity;
@property (strong, nonatomic) IBOutlet UITextView *textViewLorem;

@end
