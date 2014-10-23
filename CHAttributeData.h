//
//  CHAttributeData.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>

//Keys for Attribute Option dictionary
#define CELL_COLOR @"Cell Color"

//Keys for Attribute Type dictionary
#define ATTRIBUTE_TYPE_NAME @"Attribute Type Name"

//Attribute Type names
#define SKIN_COLOR @"Skin Color"


@interface CHAttributeData : NSObject

+ (NSArray *)optionsForAttributeType:(NSString *)name;

+ (NSArray *)attributeTypes;

@end
