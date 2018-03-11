//
//  ViewController.m
//  HostApp
//
//  Created by Prakhar Rawat on 3/11/18.
//  Copyright © 2018 Prakhar Rawat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *imgArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   // UITableView.dataSource = self;
    [self arraySetup];
}

-(void)arraySetup {
    imgArray = [NSMutableArray arrayWithArray:@[@"Image1",@"Image2",@"Image3",@"Image4"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    static NSString *cellID = @"cellReuseIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return imgArray.count;
}


@end
