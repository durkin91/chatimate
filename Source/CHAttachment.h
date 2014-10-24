//
//  CHAttachment.h
//  Chatimate
//
//  Created by Nikki Durkin on 10/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHAttachment : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) CGSize frameSize;
@property (strong, nonatomic) NSMutableArray *currentOptions;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) UIImage *baseDrawing;
@property (strong, nonatomic) CCTexture *texture;

-(id)initWithData:(NSDictionary *)data;
-(void)drawAttachment;
-(void)updateAttachment;

@end