//
//  CHAvatarDrawingData.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/25/14.
//  Copyright (c) 2014 (null). All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define PATH @"Path"
#define FILL_COLOR @"Fill Color"



@interface CHAvatarDrawingData : NSObject

@property (strong, nonatomic) NSMutableDictionary *universalColors;
@property (strong, nonatomic) NSMutableDictionary *currentOptions;

//init
- (id)initWithUniversalColors:(NSMutableDictionary *)universalColors;

// Colors
+ (UIColor *)skinColor:(int)skinColorNumber;

//To draw an array of paths
- (void)drawPaths:(NSMutableArray *)arrayOfPaths;
- (void)drawCurrentOptionsInDrawOrder:(NSArray *)drawOrder;

//BASE DRAWINGS
- (NSMutableArray *)drawShoulders;
- (NSMutableArray *)drawNeck;
- (NSMutableArray *)drawUpperHead;

//OPTIONS
- (NSMutableArray *)drawJaw:(int)jawNumber;
- (NSMutableArray *)drawEars:(int)earNumber;
- (id)drawCheekbones:(int)cheekbonesNumber;

//THUMBNAILS
- (NSMutableArray *)drawColorThumbnail:(UIColor *)color;
- (NSMutableArray *)drawJawThumbnail:(int)jawNumber;
- (NSMutableArray *)drawEarsThumbnail:(int)earsNumber;
- (NSMutableArray *)drawCheekbonesThumbnail:(int)cheekbonesNumber;

@end
