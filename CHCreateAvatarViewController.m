//
//  CHCreateAvatarViewController.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/22/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHCreateAvatarViewController.h"
#import "CHFactory.h"
#import "CHAvatarAttributeType.h"
#import "CHAvatarAttributeOption.h"

@interface CHCreateAvatarViewController () <CocosViewControllerDelegate, UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) CHFactory *factory;
@property (nonatomic) int currentAttributeIndex;

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) IBOutlet UICollectionViewCell *collectionViewCell;


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
    self.factory = [[CHFactory alloc] init];
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
    self.titleLabel.text = [self.factory.activeAttributeType.name uppercaseString];
}

#pragma mark - CollectionView Data Source

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.factory.activeAttributeType.options count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    CHAvatarAttributeOption *option = [self.factory.activeAttributeType.options objectAtIndex:indexPath.item];
    
    [cell setBackgroundColor:option.cellColor];
    NSLog(@"%@", option.cellColor);
    
    return cell;
}


#pragma mark - CocosViewControllerDelegate

-(CCScene *)cocosViewControllerSceneToRun:(CocosViewController *)cocosViewController
{
    return [CCBReader loadAsScene:@"CreateAvatarScene"];
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
