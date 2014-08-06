//
// Created by azu on 2014/08/05.
//


#import <Foundation/Foundation.h>

@class RoleTabBarItemObject;

@protocol RoleTabBarDataSource <NSObject>
/**
* Life Cycle
*
* numberOfRoleTabBarController
* -> ViewController - viewControllerAtIndex
* -> TabBarItem - tabBarItemObjectAtIndex
* -> TabBarItem - willShowTabBar
*/
- (NSUInteger)numberOfRoleTabBarController:(RoleTabBarController *) tabBarController;

- (UIViewController *)roleTabBarController:(RoleTabBarController *) tabBarController viewControllerAtIndex:(NSUInteger) index;

- (RoleTabBarItemObject *)roleTabBarController:(RoleTabBarController *) tabBarController tabBarItemObjectAtIndex:(NSUInteger) index;

@optional
- (void)roleTabBarController:(RoleTabBarController *) tabBarController willShowTabBar:(UITabBarItem *) tabBarItem atIndex:(NSUInteger) index;

@end