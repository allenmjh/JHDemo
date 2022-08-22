//
//  AppDelegate.m
//  JHDemo
//
//  Created by eastsoft_mjh on 2022/7/18.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import "JHHomeViewController.h"
#import "JHMineViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
        
    NSDictionary *loginInfo = [[NSUserDefaults standardUserDefaults] valueForKey:@"loginInfo"];
    if (loginInfo == nil || loginInfo[@"username"] == nil) {
        LoginViewController *loginVC = [[LoginViewController alloc] init];
        self.window.rootViewController = loginVC;
    } else {
        UITabBarController *tab = [[UITabBarController alloc] init];
        UINavigationController *homeNaVC = [[UINavigationController alloc] initWithRootViewController:[[JHHomeViewController alloc] init]];
        UINavigationController *mineNaVC = [[UINavigationController alloc] initWithRootViewController:[[JHMineViewController alloc] init]];
        tab.viewControllers = @[homeNaVC, mineNaVC];
        self.window.rootViewController = tab;
    }
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
