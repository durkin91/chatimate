//
//  CHAttributeData.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAttributeData.h"

@implementation CHAttributeData

#pragma mark - Attribute Option Data

//will return the correct array of options data based on the attribute type specified
+ (NSArray *)optionsForAttributeType:(NSString *)name
{
    NSArray *attributeOptionData;
    
    if ([name isEqualToString:SKIN_COLOR]) {
        NSDictionary *option1 = @{
                                  CELL_COLOR : [UIColor redColor]
                                  };
        
        NSDictionary *option2 = @{
                                  CELL_COLOR : [UIColor blueColor]
                                  };
        
        NSDictionary *option3 = @{
                                  CELL_COLOR : [UIColor greenColor]
                                  };
        
        NSDictionary *option4 = @{
                                  CELL_COLOR : [UIColor yellowColor]
                                  };
        
        NSDictionary *option5 = @{
                                  CELL_COLOR : [UIColor orangeColor]
                                  };
        
        attributeOptionData = @[option1, option2, option3, option4, option5];
    }
    
    return attributeOptionData;
    
}

#pragma mark - Attribute Type Data

+ (NSArray *)attributeTypes
{
    NSDictionary *skinColor = @{
                                ATTRIBUTE_TYPE_NAME : SKIN_COLOR
                                };
    
    NSArray *attributeTypesData = @[skinColor];
    return attributeTypesData;
}



@end
