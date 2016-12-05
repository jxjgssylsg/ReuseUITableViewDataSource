//
//  OneSectionDataSource.h
//  ReuseUITableViewDataSource
//
//  Created by Sheng,Yilin on 16/11/30.
//  Copyright © 2016年 com.personal. All rights reserved.


#import <Foundation/Foundation.h>

typedef void (^TableViewCellConfigureBlock) (id cell, id item);

@interface OneSectionDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, copy) NSString *reuseIdentifier;
@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, copy) TableViewCellConfigureBlock tableViewCellConfigureBlock;

- (id)itemAtIndexPath : (NSIndexPath *)indexPath;
- (id)initWithItems : (NSArray *)items cellConfigure : (TableViewCellConfigureBlock)configure cellReuseIdentifier : (NSString *)identifier;

@end
