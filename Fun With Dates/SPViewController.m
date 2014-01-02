//
//  SPViewController.m
//  Fun With Dates
//
//  Created by Stephen Punwasi on 12/30/13.
//  Copyright (c) 2013 StephenPunwasi. All rights reserved.
//

#import "SPViewController.h"

@interface SPViewController ()

@end

@implementation SPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDate *today = [NSDate date];
    NSLog(@"%@", today);
    
    NSTimeInterval secondsPerDay = 60 * 60 * 24;
    NSDate *tommorrow = [NSDate dateWithTimeIntervalSinceNow:secondsPerDay];
    NSLog(@"%@", tommorrow);
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EE, MMM dd"];
    NSString *todayString = [dateFormatter stringFromDate:today];
    NSLog(@"%@", todayString);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
