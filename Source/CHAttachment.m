//
//  CHAttachment.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAttachment.h"
#import "CHAttributeData.h"


@implementation CHAttachment

-(id)init
{
    self = [self initWithData:nil];
    return self;
}

//This doesn't create the options yet - will need to refactor to actually do that. Just stores the names.
-(id)initWithData:(NSDictionary *)data
{
    self = [super init];
    self.name = data[ATTACHMENT_NAME];
    self.frameSize = [data[ATTACHMENT_FRAME_SIZE] CGSizeValue];
    self.currentOptionNames = data[ATTACHMENT_OPTIONS];
    
    return self;
    
}

@end
