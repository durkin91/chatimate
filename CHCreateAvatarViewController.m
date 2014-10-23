//
//  CHCreateAvatarViewController.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/22/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatarViewController.h"

@interface CHCreateAvatarViewController () <CocosViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;


- (IBAction)tickButtonPressed:(UIButton *)sender;
- (IBAction)closeButtonPressed:(UIButton *)sender;
- (IBAction)menuButtonPressed:(UIButton *)sender;
- (IBAction)nextArrowButtonPressed:(UIButton *)sender;


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
    return [CCBReader loadAsScene:@"CreateAvatarScene"];
}

-(BOOL)shouldAutorotate
{
    return NO;
}

- (IBAction)tickButtonPressed:(UIButton *)sender {
}

- (IBAction)closeButtonPressed:(UIButton *)sender {
}

- (IBAction)menuButtonPressed:(UIButton *)sender {
}

- (IBAction)nextArrowButtonPressed:(UIButton *)sender {
}
@end
