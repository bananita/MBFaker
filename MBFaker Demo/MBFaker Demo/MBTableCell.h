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

+ (MBTableCell*)tableCellForPerson:(MBPerson*)person;

@property (retain, nonatomic) IBOutlet UILabel *labelName;
@property (retain, nonatomic) IBOutlet UILabel *labelEmail;
@property (retain, nonatomic) IBOutlet UILabel *labelAddress;
@property (retain, nonatomic) IBOutlet UILabel *labelZipCode;
@property (retain, nonatomic) IBOutlet UILabel *labelCity;
@property (retain, nonatomic) IBOutlet UITextView *textViewLorem;

@end
