//
//  ViewController.m
//  HostApp
//
//  Created by Prakhar Rawat on 3/11/18.
//  Copyright © 2018 Prakhar Rawat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // UITableView.dataSource = self;
    [self arraySetup];
}

-(void)arraySetup {
    NSArray *imgArray = [NSMutableArray arrayWithArray:@[@"Image1",@"Image2",@"Image3",@"Image4"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
