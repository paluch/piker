//
//  Color.m
//  piker
//
//  Created by Tiago Paluch on 19/11/13.
//  Copyright (c) 2013 Tiago Paluch. All rights reserved.
//

#import "Color.h"

@implementation Color
- (id) initWithName:(NSString*)n Red:(float)r Green:(float)g Blue:(float)b {
    self = [super init];
    if (self) {
        [self setName:n];
        [self setColor:[UIColor colorWithRed:r green:g blue:b alpha:1.0]];
    }
    return self;
}
@end
