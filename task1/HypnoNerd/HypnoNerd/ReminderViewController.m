//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by Yuriy T on 05.11.15.
//  Copyright © 2015 Yuriy T. All rights reserved.
//

#import "ReminderViewController.h"

@interface ReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation ReminderViewController

#pragma mark - Init

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"Reminder";
        UIImage *tabImage = [UIImage imageNamed:@"Time.png"];
        self.tabBarItem.image = tabImage;
    }
    
    return self;
}

#pragma mark - Actions

- (IBAction)addReminder:(id)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@" reminder for %@", date);
    
    UILocalNotification *notif = [[UILocalNotification alloc] init];
    notif.alertBody = @"Hypno time!";
//    notif.fireDate = date;
    notif.fireDate = [[NSDate date] dateByAddingTimeInterval:10 ];
    
    [[UIApplication sharedApplication] scheduleLocalNotification: notif];
}

#pragma mark - View

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"ReminderViewController loaded");
}

- (void) viewWillAppear: (BOOL) animated {
    [super viewWillDisappear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
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
