//
//  AppDelegate.m
//  sixthDay
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [UIWindow new];
    
    
    UIViewController *firstVCForTab = [ViewController new];
   // UIViewController *secondVC = [SecondViewController new];
    
    // первая ситуация
     UITabBarController *tabBar = [UITabBarController new];
    
    // naviigation
    
    UINavigationController* navBar = [UINavigationController new];
    UIViewController *secondVCForTab = [SecondViewController new];
    navBar.viewControllers = @[secondVCForTab];
    
    
    UINavigationController* infiniteNavBar = [UINavigationController new];
    UIViewController *thirdVCForTab = [ThirdViewController new];
    infiniteNavBar.viewControllers = @[thirdVCForTab];
    
    NSArray *viewsForTabBar = @[firstVCForTab, navBar, infiniteNavBar];
    
    [tabBar setViewControllers:viewsForTabBar];
    window.rootViewController = tabBar;
    
    // вторая ситуация со сплитами
//    UISplitViewController *splitVC = [UISplitViewController new];
//    splitVC.viewControllers = @[firstVC,secondVC];
//    window.rootViewController = splitVC;
    
    

    
 //  window.rootViewController = navBar;
    self.window = window;
    [window makeKeyAndVisible];
    

    
    return YES;
}




@end
