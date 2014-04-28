//
//  CPColor.m
//  ColorPalette
//
//  Copyright (C) 2014 Chris Jeane
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files
//  (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge,
//  publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
//  ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH
//  THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
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
