//
//  GameOverViewController.m
//  Homework5
//
//  Created by Yuriy T on 07.11.15.
//  Copyright © 2015 Yuriy T. All rights reserved.
//

#import "GameOverViewController.h"

@interface GameOverViewController ()

@end

@implementation GameOverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"Game over will be showed");
    self.navigationItem.title = @"Game over";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated {
    [self performSelector:@selector(showDefaultView) withObject:nil afterDelay:5.0f];
}
     
- (void) showDefaultView {
    [self performSegueWithIdentifier:@"backToTabBar" sender:nil];
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
