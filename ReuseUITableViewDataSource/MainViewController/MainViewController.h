//
//  MainViewController.h
//  ReuseUITableViewDataSource
//
//  Created by Sheng,Yilin on 16/11/30.
//  Copyright © 2016年 com.personal. All rights reserved.

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end 
