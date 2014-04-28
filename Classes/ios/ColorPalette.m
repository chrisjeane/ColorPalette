//
//  ColorPalette.m
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

#import "ColorPalette.h"
#import "YAMLSerialization.h"
#import "CPColor.h"

@interface ColorPalette ()

@property (strong, nonatomic) NSString *paletteName;
@property (strong, nonatomic) NSDictionary *paletteColors;

@end

@implementation ColorPalette

+ (id)sharedInstance
{
    return [ColorPalette sharedInstanceWithPalette:@"default"];
}

+ (id)sharedInstanceWithPalette:(NSString *)palette
{
    static ColorPalette *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] initWithPalette:palette];
    });
    return sharedInstance;
}

- (id)initWithPalette:(NSString *)palette
{
    self = [super init];
    if (self) {
        self.paletteName = palette;
    }
    return self;
}

- (void)loadPalette:(NSString *)palette
{
    NSString *path = [[NSBundle mainBundle] pathForResource:palette ofType:@"palette"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    NSLog(@"Loading Palette");
    NSLog(@"%@", content);
    
    NSError *yamlError = nil;
    NSMutableArray *paletteArray = [YAMLSerialization objectsWithYAMLString:content
                                                              options:kYAMLReadOptionStringScalars
                                                                error:&yamlError];
    if (yamlError != nil) {
        NSLog(@"Error loading palette: %@", yamlError.description);
    }
    
    NSLog(@"Palette Loaded");
    
    NSDictionary *paletteColors = [[paletteArray objectAtIndex:0] objectForKey:@"colors"];
    
    if (paletteColors != nil) {
        NSMutableDictionary *currentPalette = [[NSMutableDictionary alloc] initWithCapacity:[paletteColors count]];
        for (NSString *key in [paletteColors keyEnumerator]) {
            CPColor *color = [[CPColor alloc] initWithName:key colorValues:[paletteColors objectForKey:key]];
            [currentPalette setObject:color forKey:key];
        }
        self.paletteColors = currentPalette;
    } else {
        NSLog(@"Could not load colors from YAML structure. 'colors' collection missing.");
    }
}

- (NSArray *)colorNames
{
    if (self.paletteColors == nil) {
        [self loadPalette:self.paletteName];
    }
    return nil;
}

- (UIColor *)colorWithName:(NSString *)name
{
    if (self.paletteColors == nil) {
        [self loadPalette:self.paletteName];
    }
    
    if (self.paletteColors != nil) {
        UIColor *color = [[self.paletteColors objectForKey:name] colorValue];
        if (color != nil) {
            return color;
        } else {
            return nil;
        }
    } else {
        return nil;
    }
}

@end
