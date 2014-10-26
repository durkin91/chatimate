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
#import "CHCreateAvatarNode.h"
#import "CHAttachment.h"
#import "CHAvatar.h"

@interface CHCreateAvatarViewController () <CocosViewControllerDelegate, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) CHCreateAvatar *factory;
@property (nonatomic) int currentAttributeIndex;

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) IBOutlet UICollectionViewCell *collectionViewCell;

@property (strong, nonatomic) CCScene *currentScene;
@property (strong, nonatomic) CCNode *avatar;


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


#pragma mark - CollectionView Data Source

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.factory.activeAttribute.options count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    CHAvatarAttributeOption *option = [self.factory.activeAttribute.options objectAtIndex:indexPath.item];
    
    //format the cell
    UIImageView *thumbnail = (UIImageView *)[cell viewWithTag:100];
    thumbnail.image = option.thumbnailImage;
    
    return cell;
}

#pragma mark - CollectionView Delegate
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self.factory updateAttachmentsForOption:indexPath.item];
    [self setupSpritesWithAttachments:self.factory.attachments];
}


#pragma mark - CocosViewControllerDelegate

-(CCScene *)cocosViewControllerSceneToRun:(CocosViewController *)cocosViewController
{
    self.currentScene = [CCBReader loadAsScene:@"CreateAvatarNode"];
    
    //setup the sprites
    [self getAvatarNodeFromScene];
    [self setupSpritesWithAttachments:self.factory.attachments];
    
    return self.currentScene;
}

#pragma mark - UICollectionViewFlowLayout Delegate
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize cellSize;
    if ([self.factory.activeAttribute.name isEqualToString:SKIN_COLOR]) {
        cellSize = CGSizeMake(80, 80);
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

#pragma mark - Helper Methods

-(CCNode *)findNodeWithName:(NSString *)name inArrayOfChildren:(NSArray *)children
{
    for (CCNode *node in children) {
        if ([node.name isEqualToString:name]) {
            return node;
        }
    }
    
    //Node not found
    NSLog(@"Could not find node %@ in children array %@", name, children);
    return nil;
}

- (void)getAvatarNodeFromScene
{

    CCNode *CHCreateAvatarRootNode = [self findNodeWithName:CREATE_AVATAR_SCENE_ROOT_NODE_NAME inArrayOfChildren:self.currentScene.children];
    //CCNode *avatarNode = [self findNodeWithName:AVATAR_NODE_NAME inArrayOfChildren:CHCreateAvatarRootNode.children];
    self.avatar = [self findNodeWithName:AVATAR_ROOT_NODE_NAME inArrayOfChildren:CHCreateAvatarRootNode.children];
}

-(CCSprite *)attachmentSpriteWithName:(NSString *)name
{
    //find the correct sprite
    for (CCSprite *sprite in self.avatar.children) {
        if ([sprite.name isEqualToString:name]) {
            return sprite;
        }
    }
    
    //error if the sprite wasn't found for that name
    NSLog(@"No sprite found for attachment name: %@", name);
    return nil;
}

-(void)setupCollectionView
{
    [self.factory setActiveAttributeForIndex:self.currentAttributeIndex];
    self.titleLabel.text = [self.factory.activeAttribute.name uppercaseString];
}

-(void)setupSpritesWithAttachments:(NSMutableArray *)attachments
{
    for (CHAttachment *attachment in attachments) {
        CCSprite *sprite = [self attachmentSpriteWithName:attachment.name];
        sprite.texture = attachment.texture;
    }
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
