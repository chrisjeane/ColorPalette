//
//  CPEModelController.h
//  ColorPaletteExample
//
//  Created by Chris Jeane on 4/28/14.
//  Copyright (c) 2014 Chris Jeane. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CPEDataViewController;

@interface CPEModelController : NSObject <UIPageViewControllerDataSource>

- (CPEDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(CPEDataViewController *)viewController;

@end
