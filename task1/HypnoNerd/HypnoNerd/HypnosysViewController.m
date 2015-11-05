//
//  HypnosysViewController.m
//  HypnoNerd
//
//  Created by Yuriy T on 05.11.15.
//  Copyright © 2015 Yuriy T. All rights reserved.
//

#import "HypnosysViewController.h"
#import "HypnosysView.h"

@interface HypnosysViewController ()

@end

@implementation HypnosysViewController

- (void) loadView {
    [super loadView];
    
    HypnosysView *backgroundView = [[HypnosysView alloc] init];
    
    self.view = backgroundView;
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        UIImage *tabImage = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = tabImage;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"HypnosysViewController loaded");
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
