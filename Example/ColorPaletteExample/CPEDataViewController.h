//
//  CPEDataViewController.h
//  ColorPaletteExample
//
//  Created by Chris Jeane on 4/28/14.
//  Copyright (c) 2014 Chris Jeane. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPalette.h"

@interface CPEDataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;
@property (strong, nonatomic) ColorPalette *palette;

@end
