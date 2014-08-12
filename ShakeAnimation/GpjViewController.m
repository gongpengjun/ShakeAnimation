//
//  GpjViewController.m
//  ShakeAnimation
//
//  Created by 巩 鹏军 on 14-8-12.
//  Copyright (c) 2014年 gongpengjun.com. All rights reserved.
//

#import "GpjViewController.h"

@interface GpjViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *loginView;

@end

@implementation GpjViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonAction:(id)sender
{
    [self shakeLoginFormView];
}

- (void)shakeLoginFormView
{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position.x";
    animation.values = @[ @0, @10, @-10, @10, @0 ];
    animation.keyTimes = @[ @0, @(1 / 6.0), @(3 / 6.0), @(5 / 6.0), @1 ];
    animation.duration = 0.4;
    
    animation.additive = YES;
    
    [_loginView.layer addAnimation:animation forKey:@"shake"];
}

@end
