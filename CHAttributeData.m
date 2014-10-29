//
//  CHAttributeData.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAttributeData.h"
#import "CHAvatarAttributeOption.h"


@implementation CHAttributeData


#pragma mark - Initialization

-(id)init
{
    self = [super init];
    self.drawingData = [[CHAvatarDrawingData alloc] initWithUniversalColors:[self universalColors]];
    return self;
}


#pragma mark - Universal Colors Data

- (NSMutableDictionary *)universalColors
{
    NSMutableDictionary *colors = [@{
                                     UNIVERSAL_SKIN_BASE_COLOR : [CHAvatarDrawingData skinColor:4]
                                     } mutableCopy];
    return colors;
}

#pragma mark - Attribute Option Data

//will return the correct array of options data based on the attribute type specified
- (NSMutableArray *)optionsForAttribute:(NSString *)name
{
    NSMutableArray *optionsData = [@[] mutableCopy];
    
    //SKIN COLOR
    if ([name isEqualToString:SKIN_COLOR]) {
        
        for (int i = 1; i <= 28; i++) {
            NSMutableDictionary *skinColor = [@{} mutableCopy];
            skinColor[OPTION_NUMBER] = [NSNumber numberWithInt:i];
            skinColor[OPTION_NAME] = [NSString stringWithFormat:SKIN_COLOR_OPTION_NAME, i];
            skinColor[OPTION_COLOR] = [CHAvatarDrawingData skinColor:i];
            skinColor[OPTION_PATHS] = [NSNull null];
            skinColor[OPTION_ATTRIBUTE] = SKIN_COLOR;
            skinColor[OPTION_THUMBNAIL_PATHS] = [self.drawingData drawColorThumbnail:[CHAvatarDrawingData skinColor:i]];
            skinColor[OPTION_THUMBNAIL_FRAME_SIZE] = [NSValue valueWithCGSize:CGSizeMake(90, 90)];
            [optionsData addObject:skinColor];
        }

        
    }
    
    //JAW SHAPE
    else if ([name isEqualToString:JAW_SHAPE]) {
        
        for (int i = 1; i <= 9; i++) {
            NSMutableDictionary *jaw = [@{} mutableCopy];
            jaw[OPTION_NUMBER] = [NSNumber numberWithInt:i];
            jaw[OPTION_NAME] = [NSString stringWithFormat:JAW_OPTION_NAME, i];
            jaw[OPTION_COLOR] = [NSNull null];
            jaw[OPTION_PATHS] = [self.drawingData drawJaw:i];
            jaw[OPTION_ATTRIBUTE] = JAW_SHAPE;
            jaw[OPTION_THUMBNAIL_PATHS] = [self.drawingData drawJawThumbnail:i withEars:1];
            jaw[OPTION_THUMBNAIL_FRAME_SIZE] = [NSValue valueWithCGSize:CGSizeMake(300, 380)];
            [optionsData addObject:jaw];
        }
    }
    
#warning have just added null object for the thumbnail path. must fix
    //EARS
    else if ([name isEqualToString:EARS]) {

        for (int i = 1; i <= 1; i++) {
            NSMutableDictionary *ears = [@{} mutableCopy];
            ears[OPTION_NUMBER] = [NSNumber numberWithInt:i];
            ears[OPTION_NAME] = [NSString stringWithFormat:EARS_OPTION_NAME, i];
            ears[OPTION_COLOR] = [NSNull null];
            ears[OPTION_PATHS] = [self.drawingData drawEars:i];
            ears[OPTION_ATTRIBUTE] = EARS;
            ears[OPTION_THUMBNAIL_PATHS] = [@[] mutableCopy];
            ears[OPTION_THUMBNAIL_FRAME_SIZE] = [NSValue valueWithCGSize:CGSizeMake(300, 380)];
            [optionsData addObject:ears];
        }

    }
    
#warning only added 3 cheekbones in here
    //CHEEKBONES
    else if ([name isEqualToString:CHEEKBONES]) {
        
        for (int i = 1; i <= 3; i++) {
            NSMutableDictionary *cheekbones = [@{} mutableCopy];
            cheekbones[OPTION_NUMBER] = [NSNumber numberWithInt:i];
            cheekbones[OPTION_NAME] = [NSString stringWithFormat:CHEEKBONES_OPTION_NAME, i];
            cheekbones[OPTION_COLOR] = [NSNull null];
            cheekbones[OPTION_PATHS] = [self.drawingData drawCheekbones:i];
            cheekbones[OPTION_ATTRIBUTE] = CHEEKBONES;
            cheekbones[OPTION_THUMBNAIL_PATHS] = [NSNull null];
            cheekbones[OPTION_THUMBNAIL_FRAME_SIZE] = [NSValue valueWithCGSize:CGSizeMake(300, 380)];
            [optionsData addObject:cheekbones];
        }
    }
    
    return optionsData;
}

#pragma mark - Attribute Data

- (NSArray *)attributes
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

- (NSArray *)attachmentsData
{
    NSArray *attachmentsData;
    
    NSDictionary *shoulders = @{
                                ATTACHMENT_NAME : SHOULDERS_ATTACHMENT,
                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(712, 212)],
                                ATTACHMENT_BASE_DRAWING : [self.drawingData drawShoulders],
                                ATTACHMENT_DRAW_ORDER : @[]
                                };
    
    NSDictionary *neck = @{
                                ATTACHMENT_NAME : NECK_ATTACHMENT,
                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(208, 228)],
                                ATTACHMENT_BASE_DRAWING : [self.drawingData drawNeck],
                                ATTACHMENT_DRAW_ORDER : @[]
                                };
    
    NSDictionary *head = @{
                                ATTACHMENT_NAME : HEAD_ATTACHMENT,
                                ATTACHMENT_FRAME_SIZE : [NSValue valueWithCGSize:CGSizeMake(300, 420)],
                                ATTACHMENT_BASE_DRAWING : [self.drawingData drawUpperHead],
                                ATTACHMENT_DRAW_ORDER : @[EARS, JAW_SHAPE]
                                };
    //return data
    attachmentsData = @[shoulders, neck, head];
    return attachmentsData;
}

- (NSMutableDictionary *)startingOptionsData
{
    NSMutableDictionary *startingOptions = [ @{
                                                 EARS : [self optionDataForAttribute:EARS option:@"ears1"],
                                                 JAW_SHAPE : [self optionDataForAttribute:JAW_SHAPE option:@"jaw1"]
                                                 } mutableCopy];
    
    return startingOptions;
}

#pragma mark - Attachment Helper Methods
- (NSDictionary *)optionDataForAttribute:(NSString *)attributeName option:(NSString *)optionName
{
    NSArray *allAttributeOptions = [self optionsForAttribute:attributeName];
    for (NSMutableDictionary *option in allAttributeOptions) {
        if ([option[OPTION_NAME] isEqualToString:optionName]) {
            return option;
        }
    }
    return nil;
}




@end
