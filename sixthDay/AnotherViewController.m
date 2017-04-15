//
//  AnotherViewController.m
//  sixthDay
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AnotherViewController.h"
@interface AnotherViewController ()

@end

@implementation AnotherViewController

- (instancetype)init {
    
    self  = [super init];
    
    if (self){
        self.navigationItem.title = @"Back View";
    }
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    // self.tabBarItem.title = @"RIGHT TAB";
    
    
    UIButton *buttonForPushNextVC = [UIButton new];
    CGRect bounds = self.view.bounds;
    buttonForPushNextVC.frame = CGRectMake(bounds.size.width /2 - 90, bounds.size.height/2 - 40, 180, 40);
    buttonForPushNextVC.backgroundColor = [UIColor whiteColor];
    [buttonForPushNextVC setTitleColor: [UIColor lightGrayColor] forState:UIControlStateNormal];
    [buttonForPushNextVC setTitle:@"Back button" forState:UIControlStateNormal];
    
    //    if ([buttonForPushNextVC ) {
    //
    //    }
    
    
    [buttonForPushNextVC addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonForPushNextVC];
    
    
    
}


-(void)backButtonClicked:(UIButton *)sendButton {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
