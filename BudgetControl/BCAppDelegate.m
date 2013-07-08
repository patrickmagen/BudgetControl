//
//  BCAppDelegate.m
//  BudgetControl
//
//  Created by Patrick Albrecht Magen on 04.07.13.
//  Copyright (c) 2013 Patrick Albrecht Magen. All rights reserved.
//

#import "BCAppDelegate.h"

#import "BCViewController.h"

@implementation BCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    BCViewController *viewController = [[BCViewController alloc] init];
    self.window.rootViewController = viewController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
