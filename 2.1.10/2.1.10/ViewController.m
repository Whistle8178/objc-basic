//
//  ViewController.m
//  2.1.10
//
//  Created by 竹村鷹基 on 2018/03/11.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) NSMutableArray *imageNameArray;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self arraySetUp];
}


- (void)arraySetUp {
    self.imageNameArray = [NSMutableArray arrayWithArray: @[@"image1",@"image2",@"image3",@"image4"]];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.imageNameArray.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"Property List" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    
    static NSString *cellId = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if ((int)indexPath.row % 2 != 1) {
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.text = [dic objectForKey:_imageNameArray[indexPath.row]];
    } else {
        cell.imageView.image = [UIImage imageNamed:[dic objectForKey:_imageNameArray[indexPath.row]]];
    }
    cell.detailTextLabel.text = [NSString stringWithFormat:@""];
    
    return cell;
}



@end
