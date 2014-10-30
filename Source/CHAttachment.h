//
//  CHAttachment.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHAvatarDrawingData.h"
#import "CHCreateAvatarData.h"

@class CHCreateAvatarManager;

@interface CHAttachment : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) CGSize frameSize;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSMutableArray *baseDrawing;
@property (strong, nonatomic) NSArray *drawOrder;
@property (strong, nonatomic) CCTexture *texture;
@property (strong, nonatomic) CHAvatarDrawingData *drawingData;

- (id)initWithData:(NSDictionary *)data drawingData:(CHAvatarDrawingData *)drawingData;
- (void)updateAttachmentWithAttributeData:(CHCreateAvatarData *)attributeData;


@end
