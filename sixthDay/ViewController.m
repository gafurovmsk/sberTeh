//
//  ViewController.m
//  sixthDay
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,copy) NSArray *animals ;
@property (nonatomic,strong)NSTimer *time;
@property (nonatomic,strong)UITableView  *tableView;
@end

@implementation ViewController

- (instancetype)init {
    
    self  = [super init];
    
    if (self){
        self.tabBarItem .title = @"first TAB";
        self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
        self.view.backgroundColor = [UIColor colorWithRed:0 green:128 blue:255 alpha:1];
      //  self.navigationItem.title = @"First View";
        
    }
    return self;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
  
    //self.view.backgroundColor = [UIColor whiteColor];
    
    [self setModel];
    
    self.tableView = [UITableView new];
    self.tableView.frame = CGRectMake(0,0,self.view.bounds.size.width, self.view.bounds.size.height);
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
    
    
    
    
    self.time = [NSTimer scheduledTimerWithTimeInterval:3 repeats:NO block:^(NSTimer * _Nonnull timer) {
        self.animals = [self getMeat];
        self.tableView.reloadData;
    }];
    

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.animals count];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
    cell.textLabel.text = [NSString stringWithFormat:@"ячейка: %@", self.animals[indexPath.row] ];
    return cell;
}

#pragma mark - UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


-(NSArray *)getMeat {
    return @[
             @"Dog",
             @"Cat"
             ];
    
}

-(void)setModel {
    
    
    self.animals = @[
                     @"Cat",
                     @"Dog",
                     @"Bird",
                     @"Fish",
                     @"Bull"
                     ];
    
    
    
}

@end























