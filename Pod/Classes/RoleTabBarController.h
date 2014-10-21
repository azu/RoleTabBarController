//
// Created by azu on 2014/08/05.
//


#import <Foundation/Foundation.h>

@protocol RoleTabBarDataSource;


@interface RoleTabBarController : UITabBarController
@property (nonatomic) id<RoleTabBarDataSource>dataSource;

- (void)reloadData;
@end