//
//  CHAvatarAttributeType.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHAttributeData.h"

@interface CHAvatarAttribute : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *options;
@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) NSArray *attachmentNames;

- (id)initWithData:(NSDictionary *)data attributeData:(CHAttributeData *)attributeDataInstance;

@end
