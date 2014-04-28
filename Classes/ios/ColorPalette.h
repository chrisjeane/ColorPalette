//
//  ColorPalette.h
//  ColorPalette
//
//  Created by Chris Jeane on 4/28/14.
//  Copyright (c) 2014 Chris Jeane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorPalette : NSObject

+ (id)sharedInstance;
+ (id)sharedInstanceWithPalette:(NSString *)palette;
- (NSArray *)colorNames;
- (UIColor *)colorWithName:(NSString *)name;
- (void)loadPalette:(NSString *)palette;

@end
