//
//  ViewController.h
//  2.1.12
//
//  Created by 竹村鷹基 on 2018/03/28.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak,nonatomic) IBOutlet UICollectionView *collectionView;

@end

