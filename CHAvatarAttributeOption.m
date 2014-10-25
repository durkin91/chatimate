//
//  CHAvatarAttributeOption.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAvatarAttributeOption.h"
#import "CHAttributeData.h"

@implementation CHAvatarAttributeOption

-(id)init
{
    self = [self initWithData:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data
{
    self = [super init];
    self.color = data[OPTION_COLOR];
    self.attribute = data[OPTION_ATTRIBUTE];
    self.name = data[OPTION_NAME];
    
    return self;
}

@end
