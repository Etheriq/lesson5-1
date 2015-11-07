//
//  CustomViewController.m
//  Homework5
//
//  Created by Yuriy T on 07.11.15.
//  Copyright © 2015 Yuriy T. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"1. viewDidLoad");
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"2. viewWillAppear");
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    float red = arc4random_uniform(255) / 255.0f;
    float green = arc4random_uniform(255) / 255.0f;
    float blue = arc4random_uniform(255) / 255.0f;
    
//    NSLog(@"\nred = %f\n green = %f\n blue = %f", red, green, blue);
    self.view.backgroundColor = [UIColor colorWithRed: red green: green blue: blue alpha:0.8f];
    
    NSLog(@"3. viewDidAppear");
}

- (void) viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
     NSLog(@"4. viewWillDisappear");
}

- (void) viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    NSLog(@"5. viewDidDisappear");
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
