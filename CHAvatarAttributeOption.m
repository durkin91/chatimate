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

static float _colorThumbnailSize = 80;
static float _pathThumbnailSize = 212;

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
    
    //Draw the thumbnail image
    if (self.color) {
        UIGraphicsBeginImageContext(CGSizeMake(_colorThumbnailSize, _colorThumbnailSize));
    }
    else {
        UIGraphicsBeginImageContext(CGSizeMake(_pathThumbnailSize, _pathThumbnailSize));
    }
    [CHAvatarDrawingData drawPaths:data[OPTION_THUMBNAIL_PATHS]];
    self.thumbnailImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return self;
}

@end
