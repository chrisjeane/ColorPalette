//
//  CPEDataViewController.m
//  ColorPaletteExample
//
//  Created by Chris Jeane on 4/28/14.
//  Copyright (c) 2014 Chris Jeane. All rights reserved.
//

#import "CPEDataViewController.h"

@interface CPEDataViewController ()

@end

@implementation CPEDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.palette = [ColorPalette sharedInstance];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
    [self.view setBackgroundColor:[self.palette colorWithName:[self.dataLabel.text lowercaseString]]];
}

@end
