//
//  CHAvatarAttributeOption.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CHAvatarDrawingData;

@interface CHAvatarAttributeOption : NSObject

@property (strong, nonatomic) UIColor *color;
@property (strong, nonatomic) NSMutableArray *paths;
@property (strong, nonatomic) NSString *attribute;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIImage *thumbnailImage;
@property (nonatomic) int number;
@property (strong, nonatomic) CHAvatarDrawingData *drawingData;

- (id)initWithData:(NSDictionary *)data drawingData:(id)drawingData;
//- (void)drawThumbnailImage;


@end
