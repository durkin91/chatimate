//
//  CHCreateAvatarScene.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatarScene.h"


@implementation CHCreateAvatarScene {
    CCNode *avatarNode;
}

-(void)didLoadFromCCB
{
    self.avatar = [CCBReader load:@"Avatar"];
    [avatarNode addChild:self.avatar];
    
}

@end
