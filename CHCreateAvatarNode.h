//
//  CHCreateAvatarScene.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "CHAvatar.h"


#define CREATE_AVATAR_SCENE_ROOT_NODE_NAME @"CHCreateAvatarSceneRootNode"
#define AVATAR_NODE_NAME @"avatar"



@interface CHCreateAvatarNode : CCNode

@property (strong, nonatomic) CCNode *avatar;

@end
