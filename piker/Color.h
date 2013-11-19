//
//  Color.h
//  piker
//
//  Created by Tiago Paluch on 19/11/13.
//  Copyright (c) 2013 Tiago Paluch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Color : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic, strong) UIColor *color;

- (id) initWithName:(NSString*)n Red:(float)r Green:(float)g Blue:(float)b;
@end
