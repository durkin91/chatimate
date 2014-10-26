//
//  CHAvatarAttributeOption.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHAvatarAttributeOption : NSObject

@property (strong, nonatomic) UIColor *color;
@property (strong, nonatomic) NSString *attribute;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIImage *thumbnailImage;

- (id)initWithData:(NSDictionary *)data;


@end
