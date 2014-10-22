//
//  CHCreateAvatarViewController.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/22/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatarViewController.h"

@interface CHCreateAvatarViewController () <CocosViewControllerDelegate>

@end

@implementation CHCreateAvatarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark CocosViewControllerDelegate

-(CCScene *)cocosViewControllerSceneToRun:(CocosViewController *)cocosViewController
{
    return [CCBReader loadAsScene:@"MainScene"];
}

-(BOOL)shouldAutorotate
{
    return NO;
}

@end
