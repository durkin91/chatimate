//
//  CHCreateAvatarViewController.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/22/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatarViewController.h"
#import "CHCreateAvatar.h"
#import "CHAvatarAttribute.h"
#import "CHAvatarAttributeOption.h"
#import "CHAttributeData.h"
#import "CHCreateAvatarScene.h"
#import "CHAttachment.h"

@interface CHCreateAvatarViewController () <CocosViewControllerDelegate, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) CHCreateAvatar *factory;
@property (nonatomic) int currentAttributeIndex;

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) IBOutlet UICollectionViewCell *collectionViewCell;

@property (strong, nonatomic) CHCreateAvatarScene *currentScene;


- (IBAction)tickButtonPressed:(UIButton *)sender;
- (IBAction)closeButtonPressed:(UIButton *)sender;
- (IBAction)menuButtonPressed:(UIButton *)sender;
- (IBAction)nextArrowButtonPressed:(UIButton *)sender;


@end

@implementation CHCreateAvatarViewController

#pragma mark - Setup

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    
    //set delegate and datasource of collectionview
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    //retrieve the currently active attribute and setup the collection view with starting index of 0.
    self.currentAttributeIndex = 0;
    self.factory = [[CHCreateAvatar alloc] init];
    [self.factory setupAttachmentsAndColors];
    [self setupCollectionView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Fixes an error that I get with CocosViewController trying to autorotate to landscape
-(BOOL)shouldAutorotate
{
    return NO;
}

#pragma mark - Helper Methods

-(void)setupCollectionView
{
    [self.factory setActiveAttributeForIndex:self.currentAttributeIndex];
    self.titleLabel.text = [self.factory.activeAttribute.name uppercaseString];
}

-(void)setupSpritesWithAttachments:(NSMutableArray *)attachments
{
    int i = 0;
    for (CCSprite  __strong *sprite in self.currentScene.avatar.attachmentSprites) {
        CHAttachment *attachment = attachments[i];
        sprite.texture = attachment.texture;
        i++;
    }
}

#pragma mark - CollectionView Data Source

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.factory.activeAttribute.options count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    CHAvatarAttributeOption *option = [self.factory.activeAttribute.options objectAtIndex:indexPath.item];
    
    [cell setBackgroundColor:option.color];
    
    return cell;
}

#pragma mark - CollectionView Delegate
-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}


#pragma mark - CocosViewControllerDelegate

-(CHCreateAvatarScene *)cocosViewControllerSceneToRun:(CocosViewController *)cocosViewController
{
    self.currentScene = [CCBReader loadAsScene:@"CreateAvatarScene"];
    
    //setup the sprites
    [self setupSpritesWithAttachments:self.factory.attachments];
    
    return self.currentScene;
}

#pragma mark - UICollectionViewFlowLayout Delegate
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize cellSize;
    if ([self.factory.activeAttribute.name isEqualToString:SKIN_COLOR]) {
        cellSize = CGSizeMake(81, 81);
    }
    else {
        cellSize = CGSizeMake(106, 106);
    }
    return cellSize;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 1.0f;
}

#pragma mark - IBActions

- (IBAction)tickButtonPressed:(UIButton *)sender {
}

- (IBAction)closeButtonPressed:(UIButton *)sender {
}

- (IBAction)menuButtonPressed:(UIButton *)sender {
}

- (IBAction)nextArrowButtonPressed:(UIButton *)sender {
}
@end
