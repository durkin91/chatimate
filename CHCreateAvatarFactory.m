//
//  CHCreateAvatarFactory.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatarFactory.h"
#import "CHAvatarAttributeOption.h"
#import "CHAttachment.h"

@interface CHCreateAvatarFactory ()


@end

@implementation CHCreateAvatarFactory


#pragma mark - Setup

- (void)setupAttachmentsAndColors
{
    //setup attribute Data and drawing data
    self.attributeData = [[CHCreateAvatarData alloc] init];
    
    CHAvatarDrawingData *drawingData = [[CHAvatarDrawingData alloc] initWithUniversalColors:[self.attributeData universalColors]];
    self.attributeData.drawingData = drawingData;
    
    //setup starting options options
    NSMutableDictionary *startingOptionsData = [self.attributeData startingOptionsData];
    for (id key in startingOptionsData) {
        CHAvatarAttributeOption *option = [[CHAvatarAttributeOption alloc] initWithData:startingOptionsData[key] drawingData:drawingData];
        [drawingData.currentOptions setObject:option forKey:option.attribute];
        
        //Need to redraw paths and thumbnail paths/thumbnail image if paths are null because the drawing had a dependency on a current option.
        if ([option.paths isEqual:[NSNull null]]) {
            [self updatePathsAndThumbnailsForOption:option];
        }
    }
    
    
    //setup attachments
    self.attachments = [@[] mutableCopy];
    NSArray *attachmentData = [self.attributeData attachmentsData];
    for (NSDictionary *dictionary in attachmentData) {
        CHAttachment *attachment = [[CHAttachment alloc] initWithData:dictionary drawingData:drawingData];
        [self.attachments addObject:attachment];
    }
}


#pragma mark - Communicating with VC

- (void)setActiveAttributeForIndex:(int)index
{
    NSArray *attributeData = [self.attributeData attributes];
    NSDictionary *data = attributeData[index];
    
    self.activeAttribute = [[CHAvatarAttribute alloc] initWithData:data attributeData:self.attributeData];
}


- (void)updateAttachmentsForOption:(int)optionNumber
{
    CHAvatarAttributeOption *option = self.activeAttribute.options[optionNumber];
    
    //Update universal colors or current options
    if ([self.activeAttribute.type isEqualToString:COLOR_ATTRIBUTE_TYPE]) {
        [self.attributeData.drawingData.universalColors setObject:option.color forKey:UNIVERSAL_SKIN_BASE_COLOR];
    }
    else {
        [self.attributeData.drawingData.currentOptions setObject:option forKey:self.activeAttribute.name];
    }
    
    //redraw the paths for all current options. There would be a more efficient way of doing this by adding in dependencies and only updating paths dependant on the active attribute, but will do that later
    for (id key in self.attributeData.drawingData.currentOptions) {
        [self updatePathsAndThumbnailsForOption:self.attributeData.drawingData.currentOptions[key]];
    }
    
    //update attachment
    for (CHAttachment *attachment in self.attachments) {
        [attachment updateAttachmentWithAttributeData:self.attributeData];
    }
}

#pragma mark - Helper methods

- (void)updatePathsAndThumbnailsForOption:(CHAvatarAttributeOption *)option
{
    NSMutableDictionary *newOptionData = [self.attributeData optionDataForAttribute:option.attribute option:option.name];
    option.paths = newOptionData[OPTION_PATHS];
    option.thumbnailPaths = newOptionData[OPTION_THUMBNAIL_PATHS];
    [option drawThumbnailImage];
}







@end
