//
//  ViewController.m
//  ViewControllerDemo
//
//  Created by Paul on 3/9/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"

@interface ViewController () <MyViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)showViewControllerPressed:(id)sender {
    NSLog(@"showViewController");
    
    MyViewController *myViewController = [[MyViewController alloc] init];
    
    // set data for the new screen
    myViewController.dataArray = [@[@"Bob", @"Sue", @"Joe"] mutableCopy];
    myViewController.delegate = self;
    
    [self presentViewController:myViewController animated:YES completion:nil];
    
}

- (void)myViewControllerDidFinish:(MyViewController *)myViewController {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    NSMutableArray *data = myViewController.dataArray;
    NSLog(@"Changed data: %@", data);
    // Respond to data
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
