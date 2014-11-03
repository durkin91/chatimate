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
#define CHIN_OPTION_NAME @"chin%i"
#define NOSE_OPTION_NAME @"nose%i"
#define GLASSES_OPTION_NAME @"glasses%i"
#define FACIAL_HAIR_OPTION_NAME @"facialHair%i"

//ATTRIBUTES DATA
//Keys
#define ATTRIBUTE_NAME @"Attribute Name"
#define ATTRIBUTE_TYPE @"Attribute Type"

//Names
#define SKIN_COLOR @"Skin Color"
#define JAW_SHAPE @"Jaw Shape"
#define NOSE @"Nose"
#define CHEEKBONES @"Cheekbones"
#define EARS @"Ears"
#define CHIN @"Chin"
#define GLASSES @"Glasses"
#define GLASSES_FRAME_COLOR @"Glasses Color"
#define FACIAL_HAIR @"Facial Hair"
#define HAIR_COLOR @"Hair Color"

//Hidden Attribute Names
#define MOUSTACHE @"Moustache"
#define BEARD @"Beard"

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
#define NOSE_ATTACHMENT @"nose"
#define GLASSES_ATTACHMENT @"glasses"
#define MOUSTACHE_ATTACHMENT @"moustache"





@interface CHCreateAvatarData : NSObject

@property (strong, nonatomic) CHAvatarDrawingData *drawingData;

- (NSMutableDictionary *)universalColors;
- (NSArray *)optionsForAttribute:(NSString *)name;
- (NSArray *)attributes;
- (NSArray *)attachmentsData;
- (NSMutableDictionary *)startingOptionsData;
- (NSMutableDictionary *)optionDataForAttribute:(NSString *)attributeName option:(NSString *)optionName;

@end
