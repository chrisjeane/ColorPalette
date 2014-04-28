//
//  CPColor.h
//  Pods
//
//  Created by Chris Jeane on 4/28/14.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CPColor : NSObject

@property (strong, readonly) NSString *name;
@property (readonly) float redValue;
@property (readonly) float greenValue;
@property (readonly) float blueValue;

- (CPColor *)initWithName:(NSString *)name colorValues:(NSDictionary *)colorValues;
- (UIColor *)colorValue;

@end
