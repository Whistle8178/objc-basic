//
//  ViewController.m
//  2.1.1
//
//  Created by 竹村鷹基 on 2018/02/08.
//  Copyright © 2018年 竹村鷹基. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *language;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    self.language.text = NSLocalizedString(@"start obj-c", comment: "");
    

}



@end
