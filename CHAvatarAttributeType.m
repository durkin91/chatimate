//
//  CHAvatarAttributeType.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAvatarAttributeType.h"
#import "CHAttributeData.h"

@implementation CHAvatarAttributeType

-(id)init
{
    self = [self initWithData:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data
{
    self = [super init];
    self.name = data[ATTRIBUTE_TYPE_NAME];
    self.options = [CHAttributeData optionsForAttributeType:self.name];
    
    return self;
}

@end
