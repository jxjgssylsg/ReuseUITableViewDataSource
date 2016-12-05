//
//  SecondViewController.m
//  ReuseUITableViewDataSource
//
//  Created by Sheng,Yilin on 16/11/30.
//  Copyright © 2016年 com.personal. All rights reserved.

#import "SecondViewController.h"
#import "OneSectionDataSource.h"

static NSString *ReuseIdentifier = @"SecondCellIdentifier";

@interface SecondViewController ()

@property (strong, nonatomic) OneSectionDataSource *dataSource;

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.items = [[NSMutableArray alloc] initWithObjects:@"One",@"Two",@"Three",@"Four", nil];
    
    TableViewCellConfigureBlock configureBlock = ^(UITableViewCell *cell, NSString *item) {
        cell.textLabel.text = item;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"detail: %@",item];
    };
    self.dataSource = [[OneSectionDataSource alloc] initWithItems:self.items cellConfigure:configureBlock cellReuseIdentifier:ReuseIdentifier];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ReuseIdentifier];
    self.tableView.dataSource = self.dataSource;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
