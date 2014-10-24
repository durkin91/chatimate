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



- (void)setActiveAttributeForIndex:(int)index
{
    if (!self.attributeTypeData) {
        self.attributeTypeData = [CHAttributeData attributes];
    }
    
    NSDictionary *data = self.attributeTypeData[index];
    
    self.activeAttribute = [[CHAvatarAttribute alloc] initWithData:data];

}

- (void)setupAttachmentsAndColors
{
    //setup attachments
    self.attachments = [@[] mutableCopy];
    NSArray *attachmentData = [CHAttributeData attachmentsData];
    for (NSDictionary *dictionary in attachmentData) {
            CHAttachment *attachment = [[CHAttachment alloc] initWithData:dictionary];
            [self.attachments addObject:attachment];
    }
    
    //setup universal colors
    self.universalColors = [CHAttributeData univeralColors];
}

- (void)updateAttachments
{
    for (CHAttachment *attachment in self.attachments) {
        [attachment updateAttachment];
    }
}

#pragma mark - Helper methods



@end
