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
    imgArray = [NSMutableArray arrayWithArray:@[@"image1",@"image2",@"image3",@"image4"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return imgArray.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    static NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    
    cell.imageView.image = [UIImage imageNamed:imgArray[indexPath.row]];
    cell.textLabel.text = imgArray[indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", (int)indexPath.row + 1]; 
    return cell;
}



@end
