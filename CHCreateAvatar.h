//
//  CHCreateAvatar.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHAvatarAttribute.h"

@interface CHCreateAvatar : NSObject

@property (strong, nonatomic) CHAvatarAttribute *activeAttributeType;
@property (strong, nonatomic) NSMutableArray *attachments;

- (void)setupAttachments;
- (void)updateAttachments;
- (void)setActiveAttributeForIndex:(int)index;

@end
