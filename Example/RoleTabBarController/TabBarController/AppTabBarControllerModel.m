//
// Created by azu on 2014/08/05.
//


#import "AppTabBarControllerModel.h"
#import "RoleTabBarItemObject.h"
#import "RoleViewController.h"


@implementation AppTabBarControllerModel {

}
- (UIViewController *)viewControllerAtType:(AppTabBarControllerType) type {
    switch (type) {
        case AppTabBarControllerType_MAIN:
            return [RoleViewController viewController:@"main"];
        case AppTabBarControllerType_CALENDAR:
            return [RoleViewController viewController:@"calendar"];
        case AppTabBarControllerType_POST:
            return [RoleViewController viewController:@"post"];
        case AppTabBarControllerType_RANKING:
            return [RoleViewController viewController:@"ranking"];
    }
    return nil;
}

- (RoleTabBarItemObject *)tabBarItemObjectAtType:(AppTabBarControllerType) type {
    switch (type) {
        case AppTabBarControllerType_MAIN:
            return [[RoleTabBarItemObject alloc] initWithTitle:@"MAIN" selectedImage:nil unselectedImage:nil];
        case AppTabBarControllerType_CALENDAR:
            return [[RoleTabBarItemObject alloc] initWithTitle:@"CALENDAR" selectedImage:nil unselectedImage:nil];
        case AppTabBarControllerType_POST:
            return [[RoleTabBarItemObject alloc] initWithTitle:@"POST" selectedImage:nil unselectedImage:nil];
        case AppTabBarControllerType_RANKING:
            return [[RoleTabBarItemObject alloc] initWithTitle:@"RANKING" selectedImage:nil unselectedImage:nil];
    }
    return nil;
}

- (RoleTabBarItemObject *)tabBarItemObjectAtIndex:(NSUInteger) index {
    return [self tabBarItemObjectAtType:(AppTabBarControllerType)index];
}
@end