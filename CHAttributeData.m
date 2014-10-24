//
//  CHAttributeData.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAttributeData.h"
#import "AvatarColors.h"

@implementation CHAttributeData

#pragma mark - Attribute Option Data

//will return the correct array of options data based on the attribute type specified
+ (NSArray *)optionsForAttribute:(NSString *)name
{
    NSArray *optionsData;
    
    if ([name isEqualToString:SKIN_COLOR]) {
        NSDictionary *option1 = @{
                                  OPTION_COLOR : [AvatarColors skinTone19]
                                  };
        
        NSDictionary *option2 = @{
                                  OPTION_COLOR : [AvatarColors skinTone20]
                                  };
        
        NSDictionary *option3 = @{
                                  OPTION_COLOR : [AvatarColors skinTone21]
                                  };
        
        NSDictionary *option4 = @{
                                  OPTION_COLOR : [AvatarColors skinTone22]
                                  };
        
        NSDictionary *option5 = @{
                                  OPTION_COLOR : [AvatarColors skinTone23]
                                  };
        
        NSDictionary *option6 = @{
                                  OPTION_COLOR : [AvatarColors skinTone24]
                                  };
        
        NSDictionary *option7 = @{
                                  OPTION_COLOR : [AvatarColors skinTone25]
                                  };
        
        NSDictionary *option8 = @{
                                  OPTION_COLOR : [AvatarColors skinTone26]
                                  };
        
        NSDictionary *option9 = @{
                                  OPTION_COLOR : [AvatarColors skinTone27]
                                  };
        
        NSDictionary *option10 = @{
                                  OPTION_COLOR : [AvatarColors skinTone18]
                                  };
        
        NSDictionary *option11 = @{
                                  OPTION_COLOR : [AvatarColors skinTone17]
                                  };
        
        NSDictionary *option12 = @{
                                  OPTION_COLOR : [AvatarColors skinTone16]
                                  };
        
        NSDictionary *option13 = @{
                                  OPTION_COLOR : [AvatarColors skinTone15]
                                  };
        
        NSDictionary *option14 = @{
                                  OPTION_COLOR : [AvatarColors skinTone14]
                                  };
        
        NSDictionary *option15 = @{
                                  OPTION_COLOR : [AvatarColors skinTone13]
                                  };
        
        NSDictionary *option16 = @{
                                  OPTION_COLOR : [AvatarColors skinTone12]
                                  };
        
        NSDictionary *option17 = @{
                                  OPTION_COLOR : [AvatarColors skinTone11]
                                  };
        
        NSDictionary *option18 = @{
                                  OPTION_COLOR : [AvatarColors skinTone10]
                                  };
        
        NSDictionary *option19 = @{
                                  OPTION_COLOR : [AvatarColors skinTone9]
                                  };
        
        NSDictionary *option20 = @{
                                  OPTION_COLOR : [AvatarColors skinTone8]
                                  };
        
        NSDictionary *option21 = @{
                                  OPTION_COLOR : [AvatarColors skinTone7]
                                  };
        
        NSDictionary *option22 = @{
                                  OPTION_COLOR : [AvatarColors skinTone6]
                                  };
        
        NSDictionary *option23 = @{
                                  OPTION_COLOR : [AvatarColors skinTone5]
                                  };
        
        NSDictionary *option24 = @{
                                  OPTION_COLOR : [AvatarColors skinTone4]
                                  };
        
        NSDictionary *option25 = @{
                                  OPTION_COLOR : [AvatarColors skinTone3]
                                  };
        
        NSDictionary *option26 = @{
                                  OPTION_COLOR : [AvatarColors skinTone2]
                                  };
        
        NSDictionary *option27 = @{
                                  OPTION_COLOR : [AvatarColors skinTone1]
                                  };
        
        optionsData = @[option1, option2, option3, option4, option5, option6, option7, option8, option9, option10, option11, option12, option13, option14, option15, option16, option17, option18, option19, option20, option21, option22, option23, option24, option25, option26, option27];

    }
    
    return optionsData;
    
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
    
    NSLog(@"Attributes data: %@", attributesData);
    
    return attributesData;
}

#pragma mark - Attachment Data

+ (NSArray *)attachmentsData
{
    NSArray *attachmentsData;
    
    NSDictionary *shoulders = @{
                                ATTACHMENT_NAME : SHOULDERS_ATTACHMENT,
                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(712, 212)],
                                ATTACHMENT_OPTIONS : @[]
                                };
    
    NSDictionary *neck = @{
                                ATTACHMENT_NAME : NECK_ATTACHMENT,
                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(208, 228)],
                                ATTACHMENT_OPTIONS : @[]
                                };
    
    NSDictionary *head = @{
                                ATTACHMENT_NAME : HEAD_ATTACHMENT,
                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(712, 212)],
                                ATTACHMENT_OPTIONS : @[]
                                };
    
    //return data
    attachmentsData = @[shoulders, neck, head];
    return attachmentsData;
}




@end
