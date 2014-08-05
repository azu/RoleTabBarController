//
//  RoleViewController.m
//  RoleTabBarController
//
//  Created by azu on 08/05/2014.
//  Copyright (c) 2014 azu. All rights reserved.
//

#import "RoleViewController.h"

@interface RoleViewController ()
@property (nonatomic) NSString *  mainText;
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;

@end

@implementation RoleViewController
+ (instancetype)viewController:(NSString *) text {
    RoleViewController *controller = [[UIStoryboard storyboardWithName:@"RoleViewController" bundle:nil] instantiateInitialViewController];
    controller.mainText = text;
    return controller;
}

- (void)viewWillAppear:(BOOL) animated {
    [super viewWillAppear:animated];
    self.mainLabel.text = self.mainText;
}

@end
