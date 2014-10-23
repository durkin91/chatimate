//
//  CHAvatarAttributeType.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAvatarAttributeType.h"
#import "CHAttributeData.h"
#import "CHAvatarAttributeOption.h"

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
    
    //create the options
    NSArray *optionsData = [CHAttributeData optionsForAttributeType:self.name];
    NSMutableArray *allOptions = [@[] mutableCopy];
    for (NSDictionary *data in optionsData) {
        CHAvatarAttributeOption *option = [[CHAvatarAttributeOption alloc] initWithData:data];
        [allOptions addObject:option];
    }
    
    self.options = allOptions;
    
    return self;
}

@end
