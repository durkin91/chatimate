//
//  CHAttributeData.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHAvatarDrawingData.h"

//UNIVERSAL COLORS DATA
#define UNIVERSAL_SKIN_BASE_COLOR @"Skin Base Color"

//OPTIONS DATA
//Keys
#define OPTION_COLOR @"Color"
#define OPTION_PATHS @"Paths"
#define OPTION_NAME @"Name"
#define OPTION_ATTRIBUTE @"Attribute Name"
#define OPTION_THUMBNAIL_PATHS @"Thumbnail Paths"
#define OPTION_THUMBNAIL_FRAME_SIZE @"Thumbnail Frame Size"
#define OPTION_NUMBER @"Number"


//Names
#define SKIN_COLOR_OPTION_NAME @"skinColor%i"
#define JAW_OPTION_NAME @"jaw%i"
#define EARS_OPTION_NAME @"ears%i"
#define CHEEKBONES_OPTION_NAME @"cheekbones%i"

//ATTRIBUTES DATA
//Keys
#define ATTRIBUTE_NAME @"Attribute Name"
#define ATTRIBUTE_TYPE @"Attribute Type"
#define ATTRIBUTE_ATTACHMENTS @"Attribute Attachments"

//Names
#define SKIN_COLOR @"Skin Color"
#define JAW_SHAPE @"Jaw Shape"
#define NOSE @"Nose"
#define CHEEKBONES @"Cheekbones"
#define EARS @"Ears"

//Types
#define COLOR_ATTRIBUTE_TYPE @"Color"
#define PATH_ATTRIBUTE_TYPE @"Path"

//ATTACHMENTS DATA
//Keys
#define ATTACHMENT_NAME @"Name"
#define ATTACHMENT_FRAME_SIZE @"Frame Size"
#define ATTACHMENT_OPTIONS @"Options"
#define ATTACHMENT_BASE_DRAWING @"Base Drawing"
#define ATTACHMENT_DRAW_ORDER @"Draw Order"

//Names
#define SHOULDERS_ATTACHMENT @"shoulders"
#define NECK_ATTACHMENT @"neck"
#define HEAD_ATTACHMENT @"head"





@interface CHAttributeData : NSObject

@property (strong, nonatomic) CHAvatarDrawingData *drawingData;

-(id)init;
- (NSArray *)optionsForAttribute:(NSString *)name;
- (NSArray *)attributes;
- (NSArray *)attachmentsData;
- (NSMutableDictionary *)startingOptionsData;
- (NSDictionary *)optionDataForAttribute:(NSString *)attributeName option:(NSString *)optionName;

@end
