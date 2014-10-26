//
//  CHAvatarAttributeOption.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAvatarAttributeOption.h"
#import "CHAttributeData.h"
#import "CHAvatarDrawingData.h"


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
    self.paths = data[OPTION_PATHS];
    self.attribute = data[OPTION_ATTRIBUTE];
    self.name = data[OPTION_NAME];
    
    CGSize thumbnailFrameSize = [data[OPTION_THUMBNAIL_FRAME_SIZE] CGSizeValue];
    
    //Draw the thumbnail image
    if (self.color) {
        UIGraphicsBeginImageContextWithOptions(thumbnailFrameSize, 0.0, 2.0);
    }
    else {
        UIGraphicsBeginImageContextWithOptions(thumbnailFrameSize, 0.0, 1.0);
    }
    
    [CHAvatarDrawingData drawPaths:data[OPTION_THUMBNAIL_PATHS]];
    self.thumbnailImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return self;
}

@end
