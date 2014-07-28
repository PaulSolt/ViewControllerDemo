//
//  MyViewController.m
//  ViewControllerDemo
//
//  Created by Paul on 3/9/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation MyViewController

- (IBAction)doneButtonPressed:(id)sender {
    NSLog(@"Done Pressed");
    
    [self.delegate myViewControllerDidFinish:self];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.label.text = [NSString stringWithFormat:@"Names: %@", self.dataArray];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
