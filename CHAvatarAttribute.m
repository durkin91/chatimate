//
//  CHAvatarAttributeType.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAvatarAttribute.h"
#import "CHAttributeData.h"
#import "CHAvatarAttributeOption.h"

@implementation CHAvatarAttribute

-(id)init
{
    self = [self initWithData:nil universalColors:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data universalColors:(NSMutableDictionary *)universalColors
{
    self = [super init];
    self.name = data[ATTRIBUTE_NAME];
    self.type = data[ATTRIBUTE_TYPE];
    
    //create the options
    NSArray *optionsData = [CHAttributeData optionsForAttribute:self.name universalColors:universalColors];
    NSMutableArray *allOptions = [@[] mutableCopy];
    for (NSMutableDictionary *data in optionsData) {
        CHAvatarAttributeOption *option = [[CHAvatarAttributeOption alloc] initWithData:data];
        [allOptions addObject:option];
    }
    
    self.options = allOptions;
    
    return self;
}

@end
