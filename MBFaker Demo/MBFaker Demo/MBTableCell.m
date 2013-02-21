//
//  MBTableCell.m
//  MBFaker Demo
//
//  Created by Michał Banasiak on 11/9/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBTableCell.h"

@implementation MBTableCell

+ (MBTableCell*) tableCell {
    NSArray* xib = [[NSBundle mainBundle] loadNibNamed:@"MBTableCell" owner:nil options:nil];
    MBTableCell* tableCell = [xib objectAtIndex:0];
    
    return tableCell;
}

- (void)setPerson:(MBPerson *)person {
    self.labelName.text = person.name;
    self.labelEmail.text = person.email;
    self.labelAddress.text = person.address;
    self.labelZipCode.text = person.zipCode;
    self.labelCity.text = person.city;
    self.textViewLorem.text = person.lorem;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
