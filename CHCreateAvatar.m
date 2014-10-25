//
//  CHCreateAvatar.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatar.h"
#import "CHAttributeData.h"
#import "CHAvatarAttribute.h"
#import "CHAvatarAttributeOption.h"
#import "CHAttachment.h"

@interface CHCreateAvatar ()

@property (strong, nonatomic) NSArray *attributeTypeData;


@end

@implementation CHCreateAvatar


#pragma mark - Setup

- (void)setupAttachmentsAndColors
{
    //setup universal colors
    self.universalColors = [CHAttributeData univeralColors];
    
    //setup attachments
    self.attachments = [@[] mutableCopy];
    NSArray *attachmentData = [CHAttributeData attachmentsData:self];
    for (NSDictionary *dictionary in attachmentData) {
        CHAttachment *attachment = [[CHAttachment alloc] initWithData:dictionary];
        [self.attachments addObject:attachment];
    }
    NSLog(@"Attachments: %@", self.attachments);
    NSLog(@"Universal Colors: %@", self.universalColors);
}


#pragma mark - Communicating with VC

- (void)setActiveAttributeForIndex:(int)index
{
    if (!self.attributeTypeData) {
        self.attributeTypeData = [CHAttributeData attributes];
    }
    
    NSDictionary *data = self.attributeTypeData[index];
    
    self.activeAttribute = [[CHAvatarAttribute alloc] initWithData:data];

}


- (void)updateAttachmentsForOption:(int)optionNumber
{
    CHAvatarAttributeOption *option = self.activeAttribute.options[optionNumber];
    
    //this is not very modular. Can edit when I add another universal color
    if ([self.activeAttribute.type isEqualToString:COLOR_ATTRIBUTE_TYPE]) {
        [self.universalColors setObject:option.color forKey:UNIVERSAL_SKIN_BASE_COLOR];
    }
    
    //update attachment
    for (CHAttachment *attachment in self.attachments) {
        [attachment updateAttachmentForOption:option instance:self];
    }
    
}




@end
