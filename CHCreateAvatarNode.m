//
//  CHCreateAvatarScene.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatarNode.h"


@implementation CHCreateAvatarNode {
    CCNode *_avatar;
}

-(void)didLoadFromCCB
{
    _avatar = [CCBReader load:@"Avatar"];
    [self addChild:_avatar];
    
}

@end
