//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"

@implementation MainScene {
    CCNode *_avatarNode;
}

-(void)didLoadFromCCB
{
    CCNode *avatar = [CCBReader load:@"Avatar"];
    [_avatarNode addChild:avatar];
}

@end
