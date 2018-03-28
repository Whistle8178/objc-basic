//
//  ViewController.m
//  2.1.12
//
//  Created by 竹村鷹基 on 2018/03/28.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *photos;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    photos = @[@"Image1",@"Image2"];
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return photos.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1];
    NSString *imgName = photos[(int)(indexPath.row)];
    UIImage *image = [UIImage imageNamed:imgName];
    imageView.image = image;
    UILabel *label = (UILabel *)[cell viewWithTag:2];
    label.text = photos[(int)(indexPath.row)];
    return cell;
}
@end
