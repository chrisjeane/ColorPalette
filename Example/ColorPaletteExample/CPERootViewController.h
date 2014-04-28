//
//  CPERootViewController.h
//  ColorPaletteExample
//
//  Created by Chris Jeane on 4/28/14.
//  Copyright (c) 2014 Chris Jeane. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPalette.h"

@interface CPERootViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end
