//
//  SecondViewController.m
//  sixthDay
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "AnotherViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (instancetype)init {
    
    self  = [super init];
    
    if (self){
        
        
        super.tabBarItem.title = @"alksdjalsdkj";
    //    super.TabBarController
        
        UITabBarItem *item = [UITabBarItem new];
        item.title = @"second mothafocka";
        //  [self.tabBarController setTabBarItem:item];
        //NSInteger *index = [self.tabBarController selectedIndex];

       // self.tabBarController.tabBarItem.title = @"hehehe";
    
      //  self.navigationController.tabBarItem.title = @"dasdads";
    
        self.navigationController.tabBarController.tabBarItem.title = @"dasd";
        
        self.tabBarItem.title = @"second TAB";
        self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
        
        
        [self.tabBarItem initWithTitle:@"bl bla" image:NULL tag:NULL];
        
        
        self.navigationItem.title = @"Second View";
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
    [buttonForPushNextVC setTitle:@"Push The Button" forState:UIControlStateNormal];
    
    //    if ([buttonForPushNextVC ) {
    //
    //    }
    
    
    [buttonForPushNextVC addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonForPushNextVC];
    
    
    
}


-(void)backButtonClicked:(UIButton *)sendButton {
    
    UIViewController *pushVC = [AnotherViewController new];
    [self.navigationController pushViewController:pushVC animated:YES];
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
