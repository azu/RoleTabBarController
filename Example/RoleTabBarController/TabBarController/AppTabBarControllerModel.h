//
// Created by azu on 2014/08/05.
//


#import <Foundation/Foundation.h>

@class RoleTabBarItemObject;

typedef NS_ENUM(NSUInteger, AppTabBarControllerType) {
    AppTabBarControllerType_MAIN,
    AppTabBarControllerType_CALENDAR,
    AppTabBarControllerType_POST,
    AppTabBarControllerType_RANKING,
};

@interface AppTabBarControllerModel : NSObject
- (UIViewController *)viewControllerAtType:(AppTabBarControllerType) type;

- (RoleTabBarItemObject *)tabBarItemObjectAtIndex:(NSUInteger) index;
@end