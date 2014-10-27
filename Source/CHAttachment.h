//
//  CHAttachment.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHAvatarAttributeOption.h"
#import "CHAvatarAttribute.h"

@class CHCreateAvatar;

@interface CHAttachment : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) CGSize frameSize;
@property (strong, nonatomic) NSMutableDictionary *currentOptions;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSMutableArray *baseDrawing;
@property (strong, nonatomic) CCTexture *texture;

@property (strong, nonatomic) CHCreateAvatar *CHCreateAvatarInstance;

-(id)initWithData:(NSDictionary *)data instance:(CHCreateAvatar *)instance;
-(void)drawAttachment;
-(void)updateAttachmentForOption:(CHAvatarAttributeOption *)option instance:(CHCreateAvatar *)instance;


@end
