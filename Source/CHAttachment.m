//
//  CHAttachment.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAttachment.h"

@implementation CHAttachment


#pragma mark - Setup

- (id)init
{
    self = [self initWithData:nil drawingData:nil];
    return self;
}

- (id)initWithData:(NSDictionary *)data drawingData:(CHAvatarDrawingData *)drawingData
{
    self = [super init];
    if (self) {
        self.name = data[ATTACHMENT_NAME];
        self.frameSize = [data[ATTACHMENT_FRAME_SIZE] CGSizeValue];
        self.baseDrawing = data[ATTACHMENT_BASE_DRAWING];
        self.drawOrder = data[ATTACHMENT_DRAW_ORDER];
        self.drawingData = drawingData;
        [self drawAttachment];
    }
    
    return self;
    
}

#pragma mark - Update

- (void)updateAttachmentWithAttributeData:(CHCreateAvatarData *)attributeData
{
    //redraw base drawing. Will refactor this to have the base drawing included as an immutable option
    NSArray *attachmentsData = [attributeData attachmentsData];    
    for (NSDictionary *attachment in attachmentsData) {
        if ([attachment[ATTACHMENT_NAME] isEqualToString:self.name]) {
            self.baseDrawing = attachment[ATTACHMENT_BASE_DRAWING];
            break;
        }
    }
    
    //redraw attachment
    [self drawAttachment];
}

-(void)drawAttachment
{
    UIGraphicsBeginImageContext(self.frameSize);
    
    [self.drawingData drawPaths:self.baseDrawing];
    [self.drawingData drawCurrentOptionsInDrawOrder:self.drawOrder];
    
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //Convert into a texture
    self.texture = [[CCTexture alloc] initWithCGImage:self.image.CGImage contentScale:1.0];
}




@end
