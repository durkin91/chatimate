//
//  CHCreateAvatarScene.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatarNode.h"


@implementation CHCreateAvatarNode {
    CCNode *avatarNode;
}

-(void)didLoadFromCCB
{
    self.avatar = (CHAvatar *)[CCBReader load:@"Avatar"];
    [avatarNode addChild:self.avatar];
    
}

@end
