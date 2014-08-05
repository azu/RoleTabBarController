//
// Created by azu on 2014/08/05.
//


#import "RoleTabBarItemObject.h"


@implementation RoleTabBarItemObject {

}
- (instancetype)initWithTitle:(NSString *) title selectedImage:(UIImage *) selectedImage unselectedImage:(UIImage *) unselectedImage {
    self = [super init];
    if (self == nil) {
        return nil;
    }

    self.title = title;
    self.selectedImage = selectedImage;
    self.unselectedImage = unselectedImage;

    return self;
}

+ (instancetype)objectWithTitle:(NSString *) title selectedImage:(UIImage *) selectedImage unselectedImage:(UIImage *) unselectedImage {
    return [[self alloc] initWithTitle:title selectedImage:selectedImage unselectedImage:unselectedImage];
}

@end