//
// Created by azu on 2014/08/05.
//


#import "AppTabBarController.h"
#import "AppTabBarControllerModel.h"
#import "RoleTabBarItemObject.h"
#import "RoleTabBarController.h"


@interface AppTabBarController ()
@property(nonatomic, strong) AppTabBarControllerModel *model;
@end

@implementation AppTabBarController
- (AppTabBarControllerModel *)model {
    if (_model == nil) {
        _model = [[AppTabBarControllerModel alloc] init];
    }
    return _model;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = self;
    [self reloadData];
}


#pragma mark - RoleTabBarController

- (NSUInteger)numberOfRoleTabBarController:(RoleTabBarController *) tabBarController {
    return 4;
}

- (UIViewController *)roleTabBarController:(RoleTabBarController *) tabBarController viewControllerAtIndex:(NSUInteger) index {
    return [self.model viewControllerAtType:(AppTabBarControllerType)index];
}

- (RoleTabBarItemObject *)roleTabBarController:(RoleTabBarController *) tabBarController tabBarItemObjectAtIndex:(NSUInteger) index {
    return [self.model tabBarItemObjectAtIndex:index];
}


@end