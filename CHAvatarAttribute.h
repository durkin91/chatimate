//
//  CHAvatarAttributeType.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHAvatarAttribute : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *options;
@property (strong, nonatomic) NSString *type;

-(id)initWithData:(NSDictionary *)data;

@end
