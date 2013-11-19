//
//  ColorStore.m
//  piker
//
//  Created by Tiago Paluch on 19/11/13.
//  Copyright (c) 2013 Tiago Paluch. All rights reserved.
//

#import "ColorStore.h"
#import "Color.h"
@interface ColorStore()
{
    NSMutableArray* colors;
}
@end
@implementation ColorStore
+ (ColorStore *)sharedStore {
    static ColorStore* sharedStore = nil;
    if (!sharedStore)
        sharedStore = [[super alloc] init];
    
    return sharedStore;
}
- (id)init
{
    self = [super init];
    if (self) {
        colors = [[NSMutableArray alloc] init];
        [self NewColorWithName:@"Vermelho" Red:1 Green:0 Blue:0];
        [self NewColorWithName:@"Azul" Red:0 Green:0 Blue:1];
        [self NewColorWithName:@"Verde" Red:0 Green:1 Blue:0];
        [self NewColorWithName:@"Amarelo" Red:1 Green:1 Blue:0];
        
    }
    return self;
}
- (NSArray *)colors {
    return [[NSArray alloc] initWithArray:colors];
}
- (Color *)NewColorWithName:(NSString *)n Red:(float)r Green:(float)g Blue:(float)b {
    Color* color = [[Color alloc] initWithName:n Red:r Green:g Blue:b];
    [colors addObject:color];
    return color;
}
@end
