long//
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
    self = [self initWithData:nil drawingData:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data drawingData:(CHAvatarDrawingData *)drawingData
{
    self = [super init];
    self.color = data[OPTION_COLOR];
    self.paths = data[OPTION_PATHS];
    self.attribute = data[OPTION_ATTRIBUTE];
    self.name = data[OPTION_NAME];
    self.number = [data[OPTION_NUMBER] intValue];
    self.thumbnailFrameSize = [data[OPTION_THUMBNAIL_FRAME_SIZE] CGSizeValue];
    self.thumbnailPaths = data[OPTION_THUMBNAIL_PATHS];
    self.drawingData = drawingData;
    
    [self drawThumbnailImage];

    return self;
}

- (void)drawThumbnailImage
{
    //Draw the thumbnail image
    if ([self.color isKindOfClass:[UIColor class]]) {
        UIGraphicsBeginImageContextWithOptions(self.thumbnailFrameSize, 0.0, 2.0);
    }
    else {
        UIGraphicsBeginImageContextWithOptions(self.thumbnailFrameSize, 0.0, 1.0);
    }
    
    [self.drawingData drawPaths:self.thumbnailPaths];
    self.thumbnailImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

@end
