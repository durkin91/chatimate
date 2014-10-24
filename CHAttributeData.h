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


//Names
#define SKIN_COLOR_OPTION_NAME @"skinColor%i"

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

//Names
#define SHOULDERS_ATTACHMENT @"shoulders"
#define NECK_ATTACHMENT @"neck"
#define HEAD_ATTACHMENT @"head"





@interface CHAttributeData : NSObject

+ (NSMutableDictionary *)univeralColors;
+ (NSArray *)optionsForAttribute:(NSString *)name;
+ (NSArray *)attributes;
+ (NSArray *)attachmentsData:(CHCreateAvatar *)instance;

@end
