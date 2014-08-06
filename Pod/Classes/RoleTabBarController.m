//
// Created by azu on 2014/08/05.
//


#import "RoleTabBarController.h"
#import "RoleTabBarDataSource.h"
#import "RoleTabBarItemObject.h"


@implementation RoleTabBarController {

}

- (void)viewWillAppear:(BOOL) animated {
    [super viewWillAppear:animated];
    NSAssert([self.dataSource respondsToSelector:@
        selector(numberOfRoleTabBarController:)], @"must implememnt `numberOfRoleTabBarController:`");
    [self setupViewControllers];
    [self setupTabItems];
    [self updateTabItems];
}

- (void)updateTabItems {
    if (![self.dataSource respondsToSelector:@selector(roleTabBarController:willShowTabBar:atIndex:)]) {
        return;
    }
    [self.tabBar.items enumerateObjectsUsingBlock:^(UITabBarItem *tabBarItem, NSUInteger idx, BOOL *stop) {
        [self.dataSource roleTabBarController:self willShowTabBar:tabBarItem atIndex:idx];
    }];
}

- (void)setupTabItems {
    [self.tabBar.items enumerateObjectsUsingBlock:^(UITabBarItem *tabBarItem, NSUInteger idx, BOOL *stop) {
        RoleTabBarItemObject *itemObject = [self.dataSource roleTabBarController:self tabBarItemObjectAtIndex:idx];
        tabBarItem.title = itemObject.title;
        if ([tabBarItem respondsToSelector:@selector(initWithTitle:image:selectedImage:)]) {
            // unselectedImage
            if ([itemObject.unselectedImage respondsToSelector:@selector(imageWithRenderingMode:)]) {
                tabBarItem.image = [itemObject.unselectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            } else {
                tabBarItem.image = itemObject.unselectedImage;
            }
            // selectedImage
            if (![tabBarItem respondsToSelector:@selector(selectedImage)]) {
                [tabBarItem setFinishedSelectedImage:itemObject.selectedImage withFinishedUnselectedImage:itemObject.unselectedImage];
            } else {
                if ([itemObject.unselectedImage respondsToSelector:@selector(imageWithRenderingMode:)]) {
                    tabBarItem.selectedImage = [itemObject.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                } else {
                    tabBarItem.selectedImage = itemObject.selectedImage;
                }
            }
        }
    }];
}


- (void)setupViewControllers {
    NSMutableArray *viewControllers = [NSMutableArray array];
    for (NSInteger i = 0; i < [self.dataSource numberOfRoleTabBarController:self]; i++) {
        UIViewController *viewController = [self.dataSource roleTabBarController:self viewControllerAtIndex:(NSUInteger)i];
        NSAssert(viewController != nil, @"viewController is not nil");
        [viewControllers addObject:viewController];
    }
    self.viewControllers = viewControllers;
}

@end