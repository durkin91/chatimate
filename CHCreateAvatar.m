//
//  CHFactory.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatar.h"
#import "CHAttributeData.h"
#import "CHAvatarAttributeType.h"
#import "CHAvatarAttributeOption.h"

@interface CHCreateAvatar ()

@property (strong, nonatomic) NSArray *attributeTypeData;


@end

@implementation CHCreateAvatar


- (void)setActiveAttributeForIndex:(int)index
{
    if (!self.attributeTypeData) {
        self.attributeTypeData = [CHAttributeData attributeTypes];
    }
    
    NSDictionary *data = self.attributeTypeData[index];
    
    self.activeAttributeType = [[CHAvatarAttributeType alloc] initWithData:data];

}

#pragma mark - Helper methods

-(void)setColorProperties:(CHAvatarAttributeOption *)option
{
    
}

@end
