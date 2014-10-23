//
//  CHFactory.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHAvatarAttributeType.h"

@interface CHCreateAvatar : NSObject

@property (strong, nonatomic) CHAvatarAttributeType *activeAttributeType;

- (void)setActiveAttributeForIndex:(int)index;

@end
