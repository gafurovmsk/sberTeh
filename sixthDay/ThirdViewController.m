//
//  ThirdViewController.m
//  sixthDay
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (instancetype)init {
    
    self  = [super init];
    
    if (self){
         self.tabBarItem .title = @"third TAB";
         self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
        
        self.navigationItem.title = @"Third View";
        
    }
    return self;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    // buttons
    
    UIButton *buttonForPushNextVC = [UIButton new];
    CGRect bounds = self.view.bounds;
    buttonForPushNextVC.frame = CGRectMake(bounds.size.width /2 - 90, bounds.size.height/2 - 40, 180, 40);
    buttonForPushNextVC.backgroundColor = [UIColor lightGrayColor];
    [buttonForPushNextVC setTitle:@"Push the Button" forState:UIControlStateNormal];
    
    
    UIButton *buttonForRootBack = [UIButton new];
    buttonForRootBack.frame = CGRectMake(bounds.size.width /2 - 90, bounds.size.height/2 - 90, 180, 40);
    buttonForRootBack.backgroundColor = [UIColor lightGrayColor];
    [buttonForRootBack setTitle:@"Root View" forState:UIControlStateNormal];

    
    
    
    
    // actions
    
    [buttonForPushNextVC addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [buttonForRootBack addTarget:self action:@selector(needRootVC:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonForPushNextVC];
    [self.view addSubview:buttonForRootBack];
    
    
}



-(void)buttonClicked:(UIButton *)sendButton {

    UIViewController *secondVC = [ThirdViewController new];
    [self.navigationController pushViewController:secondVC animated:YES];
}


-(void)needRootVC:(UIButton*) sendButton {
    
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}










@end
