//
//  TableViewCell.h
//  test
//
//  Created by user-letsgo6 on 21.09.17.
//  Copyright © 2017 user-letsgo6. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModel.h"

@interface TableViewCell : UITableViewCell
- (void)configureCellWithMyModel:(MyModel *)model;
@end
