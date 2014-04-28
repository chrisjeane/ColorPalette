//
//  CPColor.m
//  Pods
//
//  Created by Chris Jeane on 4/28/14.
//
//

#import "CPColor.h"

@implementation CPColor

- (CPColor *)initWithName:(NSString *)name colorValues:(NSArray *)colorValues
{
    self = [super init];
    if (self) {
        _name = name;
        _redValue = [[colorValues objectAtIndex:0] floatValue];
        _greenValue = [[colorValues objectAtIndex:1] floatValue];
        _blueValue = [[colorValues objectAtIndex:2] floatValue];
    }
    return self;
}

- (UIColor *)colorValue
{
    return [UIColor colorWithRed:self.redValue/255.0
                           green:self.greenValue/255.0
                            blue:self.blueValue/255.0
                           alpha:1.0];
}

@end
