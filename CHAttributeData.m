//
//  CHAttributeData.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAttributeData.h"
#import "AvatarColors.h"

@implementation CHAttributeData

#pragma mark - Attribute Option Data

//will return the correct array of options data based on the attribute type specified
+ (NSArray *)optionsForAttributeType:(NSString *)name
{
    NSArray *attributeOptionData;
    
    if ([name isEqualToString:SKIN_COLOR]) {
        NSDictionary *option1 = @{
                                  CELL_COLOR : [AvatarColors skinTone19]
                                  };
        
        NSDictionary *option2 = @{
                                  CELL_COLOR : [AvatarColors skinTone20]
                                  };
        
        NSDictionary *option3 = @{
                                  CELL_COLOR : [AvatarColors skinTone21]
                                  };
        
        NSDictionary *option4 = @{
                                  CELL_COLOR : [AvatarColors skinTone22]
                                  };
        
        NSDictionary *option5 = @{
                                  CELL_COLOR : [AvatarColors skinTone23]
                                  };
        
        NSDictionary *option6 = @{
                                  CELL_COLOR : [AvatarColors skinTone24]
                                  };
        
        NSDictionary *option7 = @{
                                  CELL_COLOR : [AvatarColors skinTone25]
                                  };
        
        NSDictionary *option8 = @{
                                  CELL_COLOR : [AvatarColors skinTone26]
                                  };
        
        NSDictionary *option9 = @{
                                  CELL_COLOR : [AvatarColors skinTone27]
                                  };
        
        NSDictionary *option10 = @{
                                  CELL_COLOR : [AvatarColors skinTone18]
                                  };
        
        NSDictionary *option11 = @{
                                  CELL_COLOR : [AvatarColors skinTone17]
                                  };
        
        NSDictionary *option12 = @{
                                  CELL_COLOR : [AvatarColors skinTone16]
                                  };
        
        NSDictionary *option13 = @{
                                  CELL_COLOR : [AvatarColors skinTone15]
                                  };
        
        NSDictionary *option14 = @{
                                  CELL_COLOR : [AvatarColors skinTone14]
                                  };
        
        NSDictionary *option15 = @{
                                  CELL_COLOR : [AvatarColors skinTone13]
                                  };
        
        NSDictionary *option16 = @{
                                  CELL_COLOR : [AvatarColors skinTone12]
                                  };
        
        NSDictionary *option17 = @{
                                  CELL_COLOR : [AvatarColors skinTone11]
                                  };
        
        NSDictionary *option18 = @{
                                  CELL_COLOR : [AvatarColors skinTone10]
                                  };
        
        NSDictionary *option19 = @{
                                  CELL_COLOR : [AvatarColors skinTone9]
                                  };
        
        NSDictionary *option20 = @{
                                  CELL_COLOR : [AvatarColors skinTone8]
                                  };
        
        NSDictionary *option21 = @{
                                  CELL_COLOR : [AvatarColors skinTone7]
                                  };
        
        NSDictionary *option22 = @{
                                  CELL_COLOR : [AvatarColors skinTone6]
                                  };
        
        NSDictionary *option23 = @{
                                  CELL_COLOR : [AvatarColors skinTone5]
                                  };
        
        NSDictionary *option24 = @{
                                  CELL_COLOR : [AvatarColors skinTone4]
                                  };
        
        NSDictionary *option25 = @{
                                  CELL_COLOR : [AvatarColors skinTone3]
                                  };
        
        NSDictionary *option26 = @{
                                  CELL_COLOR : [AvatarColors skinTone2]
                                  };
        
        NSDictionary *option27 = @{
                                  CELL_COLOR : [AvatarColors skinTone1]
                                  };

        
        
        
        attributeOptionData = @[option1, option2, option3, option4, option5, option6, option7, option8, option9, option10, option11, option12, option13, option14, option15, option16, option17, option18, option19, option20, option21, option22, option23, option24, option25, option26, option27];
    }
    
    return attributeOptionData;
    
}

#pragma mark - Attribute Type Data

+ (NSArray *)attributes
{
    NSDictionary *skinColor = @{
                                ATTRIBUTE_NAME : SKIN_COLOR
                                };
    
    NSArray *attributesData = @[skinColor];
    return attributesData;
}



@end
