//
//  CHFactory.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHFactory.h"
#import "CHAvatarAttributeType.h"
#import "CHAttributeData.h"

@implementation CHFactory

- (CHAvatarAttributeType *)attributeTypeForIndex:(int)index
{
    if (!self.attributeTypeData) {
        self.attributeTypeData = [CHAttributeData attributeTypes];
    }
    
    NSDictionary *data = self.attributeTypeData[index];
    CHAvatarAttributeType *attributeType = [[CHAvatarAttributeType alloc] initWithData:data];
    
    return attributeType;

}

@end
