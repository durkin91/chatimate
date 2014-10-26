//
//  CHAttachment.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHAttachment.h"
#import "CHAttributeData.h"



@implementation CHAttachment


#pragma mark - Setup

- (id)init
{
    self = [self initWithData:nil];
    return self;
}

- (id)initWithData:(NSDictionary *)data
{
    self = [super init];
    if (!self) return nil;
    
    self.name = data[ATTACHMENT_NAME];
    self.frameSize = [data[ATTACHMENT_FRAME_SIZE] CGSizeValue];
    self.baseDrawing = data[ATTACHMENT_BASE_DRAWING];
    
    //Create current options and order them by draw order
    NSArray *currentOptionsNames= data[ATTACHMENT_OPTIONS];
    NSArray *attributesData =[CHAttributeData attributes];
    self.currentOptions = [@[] mutableCopy];
    
    if ([currentOptionsNames count] > 0) {
        BOOL isFinished = NO;
        for (NSDictionary *attribute in attributesData) {
            NSString *attributeName = attribute[ATTRIBUTE_NAME];
            NSArray *optionsForAttribute = [CHAttributeData optionsForAttribute:attributeName];
            
            for (NSMutableDictionary *option in optionsForAttribute) {
                for (int i = 0; i < [currentOptionsNames count]; i++) {
                    if ([option[OPTION_NAME] isEqualToString:currentOptionsNames[i]]) {
                        CHAvatarAttributeOption *currentOption = option[OPTION_NAME];
                        
                        //Place option in the correct draw order in self.currentOptions
                        int drawOrder = [currentOptionsNames indexOfObject:option[OPTION_NAME]];
                        int x = [self.currentOptions count];
                        
                        //handle case where self.currentoptions is empty
                        if (x == 0) {
                            [self.currentOptions addObject:currentOption];
                        }
                        
                        //handle case where the option needs to be placed at the right index
                        else if ((x > 0) && (x < drawOrder)) {
                            for (int y = 0; y < x; y++) {
                                if (drawOrder < y) {
                                    [self.currentOptions insertObject:currentOption atIndex:y];
                                }
                            }
                        }
                        
                        //handle the option where the option needs to go at the very end
                        else {
                            [self.currentOptions insertObject:currentOption atIndex:x + 1];
                        }
                        
                        //if we have found all the options, then we can break.
                        if ([self.currentOptions count] == [currentOptionsNames count]) {
                            isFinished = YES;
                            break;
                        }
                        if (isFinished) break;
                    }
                    if (isFinished) break;
                }
                if (isFinished) break;
            }
            if (isFinished) break;
        }
    }
    
    [self drawAttachment];
    
    
    return self;
    
}

#pragma mark - Update

-(void)updateAttachmentForOption:(CHAvatarAttributeOption *)option instance:(CHCreateAvatar *)instance
{
    //change the options to the currently selected option
    for (CHAvatarAttributeOption __strong *currentOption in self.currentOptions)
    {
        if ([currentOption.name isEqualToString:instance.activeAttribute.name]) {
            currentOption = option;
            break;
        }
    }
    
    //redraw base drawing. This is a hack for now. Figure out how to use @selector
    if ([self.name isEqualToString:SHOULDERS_ATTACHMENT]) {
        self.baseDrawing = [CHAvatarDrawingData drawShoulders:instance.universalColors];
    }
    else if ([self.name isEqualToString:NECK_ATTACHMENT]) {
        self.baseDrawing = [CHAvatarDrawingData drawNeck:instance.universalColors];
    }
    
    
//    NSString *selectorString = [NSString stringWithFormat:@"imageOf%@:", [self.name capitalizedString]];
//    SEL imageSelector = NSSelectorFromString(selectorString);
//    self.baseDrawing = [[CHAvatarDrawingData class] performSelector:@selector(imageSelector)];
    
    //redraw attachment
    [self drawAttachment];
}

//when I start adding options, remember to add these in here
-(void)drawAttachment
{
    UIGraphicsBeginImageContext(self.frameSize);
    
    [self drawPaths:self.baseDrawing];
    
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //Convert into a texture
    self.texture = [[CCTexture alloc] initWithCGImage:self.image.CGImage contentScale:1.0];
}

#pragma mark - Helper Methods

- (void)drawPaths:(NSMutableArray *)arrayOfPaths
{
    
    for (NSDictionary *pathInfo in arrayOfPaths) {
        UIBezierPath *path = pathInfo[PATH];
        UIColor *color = pathInfo[FILL_COLOR];
        [color setFill];
        [path fill];
    }

}


@end
