//
//  CHAvatar.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAvatar.h"

@implementation CHAvatar {
    CCSprite *_shoulders;
    CCSprite *_neck;
    CCSprite *_head;
}

//Have left off the head for now just to get this working.
-(void)didLoadFromCCB
{
    self.attachmentSprites = [@[_shoulders, _neck] mutableCopy];
    
}



@end
