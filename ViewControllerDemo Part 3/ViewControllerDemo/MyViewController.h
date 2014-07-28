//
//  MyViewController.h
//  ViewControllerDemo
//
//  Created by Paul on 3/9/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

// Forward Declaration
@class MyViewController;

@protocol MyViewControllerDelegate <NSObject>

- (void)myViewControllerDidFinish:(MyViewController *)myViewController;

@end

@interface MyViewController : UIViewController

@property (strong, nonatomic) NSMutableArray *dataArray;

@property (weak, nonatomic) id<MyViewControllerDelegate> delegate;


@end
