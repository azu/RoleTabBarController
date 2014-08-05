//
// Created by azu on 2014/08/05.
//


#import <Foundation/Foundation.h>

// Simple UITabBarItem viewModel
@interface RoleTabBarItemObject : NSObject

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) UIImage *selectedImage;
@property(nonatomic, copy) UIImage *unselectedImage;

- (instancetype)initWithTitle:(NSString *) title selectedImage:(UIImage *) selectedImage unselectedImage:(UIImage *) unselectedImage;

+ (instancetype)objectWithTitle:(NSString *) title selectedImage:(UIImage *) selectedImage unselectedImage:(UIImage *) unselectedImage;

@end