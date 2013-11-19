//
//  ColorStore.h
//  piker
//
//  Created by Tiago Paluch on 19/11/13.
//  Copyright (c) 2013 Tiago Paluch. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Color;

@interface ColorStore : NSObject
+ (ColorStore*)sharedStore;
- (NSArray *)colors;
- (Color *)NewColorWithName:(NSString*)n Red:(float)r Green:(float)g Blue:(float)b;
@end
