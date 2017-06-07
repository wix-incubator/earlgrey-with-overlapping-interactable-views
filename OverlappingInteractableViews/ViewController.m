//
//  ViewController.m
//  OverlappingInteractableViews
//
//  Created by Sergey Ilyevsky on 07/06/2017.
//  Copyright © 2017 Sergey Ilyevsky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    IBOutlet UIButton *_backgroundButton;
    IBOutlet UIButton *_overlappingButton;
    IBOutlet UIScrollView *_overlappingScrollView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    _backgroundButton.backgroundColor = [UIColor cyanColor];
    _overlappingButton.backgroundColor = [UIColor yellowColor];
    
//    [self _moveViews];
}

- (void)_moveViews
{
    CGRect overlappingButtonFrame = _overlappingButton.frame;
    overlappingButtonFrame.origin.x -= overlappingButtonFrame.size.width;
    _overlappingButton.frame = overlappingButtonFrame;
    
    CGRect overlappingScrollViewFrame = _overlappingScrollView.frame;
    overlappingScrollViewFrame.origin.y -= overlappingScrollViewFrame.size.height;
    _overlappingScrollView.frame = overlappingScrollViewFrame;
}

- (void)_showMessage:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:message message:nil preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)handleBackgroundButtonClick
{
    [self _showMessage:@"backrgound button was tapped"];
}

- (IBAction)handleOverlappingButtonClick
{
    [self _showMessage:@"overlapping button was tapped"];
}


@end
