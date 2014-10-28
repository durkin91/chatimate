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


#pragma mark - Setup

- (id)init
{
    self = [self initWithData:nil instance:nil];
    return self;
}

- (id)initWithData:(NSDictionary *)data instance:(CHCreateAvatar *)instance
{
    self = [super init];
    if (!self) return nil;
    
    self.name = data[ATTACHMENT_NAME];
    self.frameSize = [data[ATTACHMENT_FRAME_SIZE] CGSizeValue];
    self.baseDrawing = data[ATTACHMENT_BASE_DRAWING];
    self.currentOptions = data[ATTACHMENT_OPTIONS];
    self.CHCreateAvatarInstance = instance;
    
    [self drawAttachment];
    
    return self;
    
}

#pragma mark - Update

-(void)updateAttachmentForOption:(CHAvatarAttributeOption *)option instance:(CHCreateAvatar *)instance
{
    //change the options to the currently selected option if it is a path type
    if ([instance.activeAttribute.type isEqualToString:PATH_ATTRIBUTE_TYPE]) {
        for (NSString *attachmentName in self.CHCreateAvatarInstance.activeAttribute.attachmentNames) {
            if ([self.name isEqualToString:attachmentName]) {
                self.currentOptions[instance.activeAttribute.name] = option;
            }
        }
    }
    
    //redraw base drawing. This is a hack for now. Figure out how to use @selector. Or iterate through the dictionaries and replace the colors of the paths with the new universal colors
    if ([self.name isEqualToString:SHOULDERS_ATTACHMENT]) {
        self.baseDrawing = [CHAvatarDrawingData drawShoulders:instance.universalColors];
    }
    else if ([self.name isEqualToString:NECK_ATTACHMENT]) {
        self.baseDrawing = [CHAvatarDrawingData drawNeck:instance.universalColors];
    }
    else if ([self.name isEqualToString:HEAD_ATTACHMENT]) {
        self.baseDrawing = [CHAvatarDrawingData drawUpperHead:instance.universalColors];
    }
    
    //redraw the path for each option by checking only updating attachments that it is relevant to.
    for (NSString *attachmentName in self.CHCreateAvatarInstance.activeAttribute.attachmentNames) {
        if ([self.name isEqualToString:attachmentName]) {
            for (id key in self.currentOptions) {
                if (![self.currentOptions[key] isEqual:[NSNull null]]) {
                    CHAvatarAttributeOption *currentOption = self.currentOptions[key];
                    NSArray *optionsData = [CHAttributeData optionsForAttribute:key universalColors:instance.universalColors];
                    for (NSDictionary *option in optionsData) {
                        if ([option[OPTION_NAME] isEqualToString:currentOption.name]) {
                            currentOption.paths = option[OPTION_PATHS];
                            break;
                        }
                    }
                }
            }
        }
    }
    
    //redraw attachment
    [self drawAttachment];
}

-(void)drawAttachment
{
    UIGraphicsBeginImageContext(self.frameSize);
    
    [CHAvatarDrawingData drawPaths:self.baseDrawing];
    [CHAvatarDrawingData drawOptions:self.currentOptions];
    
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //Convert into a texture
    self.texture = [[CCTexture alloc] initWithCGImage:self.image.CGImage contentScale:1.0];
}




@end
