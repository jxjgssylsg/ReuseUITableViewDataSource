//
//  MainViewController.m
//  ReuseUITableViewDataSource
//
//  Created by Sheng,Yilin on 16/11/30.
//  Copyright © 2016年 com.personal. All rights reserved.

#import "MainViewController.h"
#import "OneSectionDataSource.h"
#import "SecondViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) OneSectionDataSource *dataSource;

@end

static NSString *ReuseIdentifier = @"UITableViewCellIdentifier";

@implementation MainViewController

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
    self.dataArray = [[NSMutableArray alloc] initWithObjects:@"我爱这个世界。",@"我不是为了输赢，我只是认真。",@"天生骄傲。", nil];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ReuseIdentifier];
    
    // block 实现
    TableViewCellConfigureBlock configureBlock = ^(UITableViewCell * cell, NSString * item) {
        cell.textLabel.text = item;
    };
    
    self.dataSource = [[OneSectionDataSource alloc] initWithItems:self.dataArray cellConfigure:configureBlock cellReuseIdentifier:ReuseIdentifier];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    SecondViewController* secondVC = [[SecondViewController alloc] init];
    [self presentViewController:secondVC animated:YES completion:nil];
}

@end
