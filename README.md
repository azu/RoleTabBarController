# RoleTabBarController

[![CI Status](http://img.shields.io/travis/azu/RoleTabBarController.svg?style=flat)](https://travis-ci.org/azu/RoleTabBarController)
[![Version](https://img.shields.io/cocoapods/v/RoleTabBarController.svg?style=flat)](http://cocoadocs.org/docsets/RoleTabBarController)
[![License](https://img.shields.io/cocoapods/l/RoleTabBarController.svg?style=flat)](http://cocoadocs.org/docsets/RoleTabBarController)
[![Platform](https://img.shields.io/cocoapods/p/RoleTabBarController.svg?style=flat)](http://cocoadocs.org/docsets/RoleTabBarController)

RoleTabBarController provide Implementing UITabBarController pattern.

* Similar to `<UITableViewDataSource>` patterns.

`RoleTabBarController` is not special, but it's just another pattern.

## Installation

```
pod 'RoleTabBarController'
```

## Example

See `Example/` or 

```
pod try RoleTabBarController
```

### RoleTabBarDataSource

You should implement `<RoleTabBarDataSource>` protocol on subclass of `RoleTabBarController`

``` objectivec
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
```

## How to use

1. You create Subclass of `RoleTabBarController` and adopt `<RoleTabBarDataSource>` protocol on the subclass(AppTabBarController) 
2. You should implement `<RoleTabBarDataSource>` protocol
3. That's all

``` objc
@interface AppTabBarController : RoleTabBarController <RoleTabBarDataSource>
@end

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
```


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT