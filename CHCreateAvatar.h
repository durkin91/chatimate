//
//  CHCreateAvatar.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHAvatarAttribute.h"
#import "CHAttributeData.h"

@interface CHCreateAvatar : NSObject

@property (strong, nonatomic) CHAvatarAttribute *activeAttribute;
@property (strong, nonatomic) NSMutableArray *attachments;
@property (strong, nonatomic) CHAttributeData *attributeData;


- (void)setupAttachmentsAndColors;
- (void)updateAttachmentsForOption:(int)optionNumber;
- (void)setActiveAttributeForIndex:(int)index;

@end
