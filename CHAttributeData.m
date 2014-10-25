//
//  CHAttributeData.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAttributeData.h"


@implementation CHAttributeData

#pragma mark - Universal Colors Data

+ (NSMutableDictionary *)univeralColors
{
    NSMutableDictionary *colors = [@{
                                     UNIVERSAL_SKIN_BASE_COLOR : [CHAvatarDrawingData skinTone26]
                                     } mutableCopy];
    return colors;
}

#pragma mark - Attribute Option Data

//will return the correct array of options data based on the attribute type specified
+ (NSArray *)optionsForAttribute:(NSString *)name
{
    NSMutableArray *optionsData;
    
    if ([name isEqualToString:SKIN_COLOR]) {
        NSMutableDictionary *option1 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone19],
                                  } mutableCopy];
        
        NSMutableDictionary *option2 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone20]
                                  } mutableCopy];
        
        NSMutableDictionary *option3 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone21]
                                  } mutableCopy];
        
        NSMutableDictionary *option4 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone22]
                                  } mutableCopy];
        
        NSMutableDictionary *option5 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone23]
                                  } mutableCopy];
        
        NSMutableDictionary *option6 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone24]
                                  } mutableCopy];
        
        NSMutableDictionary *option7 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone25]
                                  } mutableCopy];
        
        NSMutableDictionary *option8 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone26]
                                  } mutableCopy];
        
        NSMutableDictionary *option9 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone27]
                                  } mutableCopy];
        
        NSMutableDictionary *option10 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone18]
                                  } mutableCopy];
        
        NSMutableDictionary *option11 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone17]
                                  } mutableCopy];
        
        NSMutableDictionary *option12 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone16]
                                  } mutableCopy];
        
        NSMutableDictionary *option13 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone15]
                                  } mutableCopy];
        
        NSMutableDictionary *option14 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone14]
                                  } mutableCopy];
        
        NSMutableDictionary *option15 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone13]
                                  } mutableCopy];
        
        NSMutableDictionary *option16 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone12]
                                  } mutableCopy];
        
        NSMutableDictionary *option17 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone11]
                                  } mutableCopy];
        
        NSMutableDictionary *option18 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone10]
                                  } mutableCopy];
        
        NSMutableDictionary *option19 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone9]
                                  } mutableCopy];
        
        NSMutableDictionary *option20 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone8]
                                  } mutableCopy];
        
        NSMutableDictionary *option21 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone7]
                                  } mutableCopy];
        
        NSMutableDictionary *option22 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone6]
                                  } mutableCopy];
        
        NSMutableDictionary *option23 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone5]
                                  } mutableCopy];
        
        NSMutableDictionary *option24 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone4]
                                  } mutableCopy];
        
        NSMutableDictionary *option25 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone3]
                                  } mutableCopy];
        
        NSMutableDictionary *option26 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone2]
                                  } mutableCopy];
        
        NSMutableDictionary *option27 = [@{
                                  OPTION_COLOR : [CHAvatarDrawingData skinTone1]
                                  } mutableCopy];
        
        optionsData = [@[option1, option2, option3, option4, option5, option6, option7, option8, option9, option10, option11, option12, option13, option14, option15, option16, option17, option18, option19, option20, option21, option22, option23, option24, option25, option26, option27] mutableCopy];
        
        [self giveOptions:optionsData aName:SKIN_COLOR_OPTION_NAME];
        [self giveOptions:optionsData aString:SKIN_COLOR forCommonKey:OPTION_ATTRIBUTE];

    }
    
    return optionsData;
    
}

+ (void)giveOptions:(NSMutableArray *)options aName:(NSString *)name
{
    int i = 0;
    for (NSMutableDictionary *dictionary in options) {
        [dictionary setObject:[NSString stringWithFormat:name, i] forKey:OPTION_NAME];
        i++;
    }

}

+ (void)giveOptions:(NSMutableArray *)options aString:(NSString *)string forCommonKey:(NSString *)key
{
    int i = 0;
    for (NSMutableDictionary *dictionary in options) {
        [dictionary setObject:string forKey:key];
        i++;
    }
    
}

#pragma mark - Attribute Type Data

+ (NSArray *)attributes
{
    
    NSDictionary *skinColor = @{
                                ATTRIBUTE_NAME : SKIN_COLOR,
                                ATTRIBUTE_TYPE : COLOR_ATTRIBUTE_TYPE,
                                ATTRIBUTE_ATTACHMENTS : @[SHOULDERS_ATTACHMENT,
                                                          NECK_ATTACHMENT,
                                                          HEAD_ATTACHMENT]
                                };
    
    NSDictionary *jawShape = @{
                                ATTRIBUTE_NAME : JAW_SHAPE,
                                ATTRIBUTE_TYPE : PATH_ATTRIBUTE_TYPE,
                                ATTRIBUTE_ATTACHMENTS : @[HEAD_ATTACHMENT]
                                };
    
    NSDictionary *nose = @{
                                ATTRIBUTE_NAME : NOSE,
                                ATTRIBUTE_TYPE : PATH_ATTRIBUTE_TYPE,
                                ATTRIBUTE_ATTACHMENTS : @[HEAD_ATTACHMENT]
                               };
    
    NSDictionary *cheekbones = @{
                                ATTRIBUTE_NAME : CHEEKBONES,
                                ATTRIBUTE_TYPE : PATH_ATTRIBUTE_TYPE,
                                ATTRIBUTE_ATTACHMENTS : @[HEAD_ATTACHMENT]
                           };
    
    NSDictionary *ears = @{
                                ATTRIBUTE_NAME : EARS,
                                ATTRIBUTE_TYPE : PATH_ATTRIBUTE_TYPE,
                                ATTRIBUTE_ATTACHMENTS : @[HEAD_ATTACHMENT]
                           };
    
    //return data
    NSArray *attributesData = @[skinColor, jawShape, nose, cheekbones, ears];
    
    
    return attributesData;
}

#pragma mark - Attachment Data

+ (NSArray *)attachmentsData:(CHCreateAvatar *)instance
{
    NSArray *attachmentsData;
    
    NSDictionary *shoulders = @{
                                ATTACHMENT_NAME : SHOULDERS_ATTACHMENT,
                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(712, 212)],
                                ATTACHMENT_OPTIONS : @[],
                                ATTACHMENT_BASE_DRAWING : [CHAvatarDrawingData imageOfShoulders:instance]
                                };
    
    NSDictionary *neck = @{
                                ATTACHMENT_NAME : NECK_ATTACHMENT,
                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(208, 228)],
                                ATTACHMENT_OPTIONS : @[],
                                ATTACHMENT_BASE_DRAWING : [CHAvatarDrawingData imageOfNeck:instance]
                                };
    
//    NSDictionary *head = @{
//                                ATTACHMENT_NAME : HEAD_ATTACHMENT,
//                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(712, 212)],
//                                ATTACHMENT_OPTIONS : @[]
//                                };
    
    //return data
    attachmentsData = @[shoulders, neck];
    return attachmentsData;
}




@end
