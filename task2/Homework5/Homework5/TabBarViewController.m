//
//  TabBarViewController.m
//  Homework5
//
//  Created by Yuriy T on 07.11.15.
//  Copyright © 2015 Yuriy T. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

# pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"ss";
    }
    return self;
}

# pragma mark - Views

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
