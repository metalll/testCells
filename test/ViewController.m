//
//  ViewController.m
//  test
//
//  Created by user-letsgo6 on 21.09.17.
//  Copyright © 2017 user-letsgo6. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

NSString * const cellIdentifier = @"TableViewCell";
NSString * const nibName = @"TableViewCell";

@interface ViewController ()  <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSMutableArray<MyModel *> *arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configMyArr];
    [self configTableView];
    
}

- (void)configTableView {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)configMyArr{
    self.arr = [NSMutableArray new];
    for (NSUInteger i = 1; i < 40; i++) {
        MyModel *addingObj = [MyModel new];
        addingObj.label = [NSString stringWithFormat:@"%d",arc4random()];
        [self.arr addObject:addingObj];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!myCell) {
        myCell = [[[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil]firstObject];
    }
    [myCell configureCellWithMyModel:[self.arr objectAtIndex:indexPath.row]];
    return myCell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arr.count;
}

@end
