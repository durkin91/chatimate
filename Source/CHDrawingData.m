//
//  CHDrawingData.m
//  Chatimate
//
//  Created by Nikki Durkin on 10/23/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CHDrawingData.h"
#import "CHAvatar.h"
#import "AvatarColors.h"

@interface CHDrawingData ()

@property (strong, nonatomic) UIColor *skinColor;
@property (strong, nonatomic) UIColor *skinShadowColor;
@property (strong, nonatomic) UIColor *outlineColor;


@end

@implementation CHDrawingData

//need to refactor to be dynamic, of course
- (id)init {
    self = [super init];
    if (self) {
        self.outlineColor = [UIColor blackColor];
        self.skinColor = [UIColor colorWithRed: 0.748 green: 0.534 blue: 0.403 alpha: 1];
        
        //set skin shadow color
        UIColor *skinBase = self.skinColor;
        CGFloat skinBaseRGBA[4];
        [skinBase getRed: &skinBaseRGBA[0] green: &skinBaseRGBA[1] blue: &skinBaseRGBA[2] alpha: &skinBaseRGBA[3]];
        
        self.skinShadowColor = [UIColor colorWithRed: (skinBaseRGBA[0] * 0.8) green: (skinBaseRGBA[1] * 0.8) blue: (skinBaseRGBA[2] * 0.8) alpha: (skinBaseRGBA[3] * 0.8 + 0.2)];
    }
    
    return self;
}

#pragma mark - Shoulders

- (NSMutableArray *)drawShoulders
{
    NSMutableArray *paths = [@[] mutableCopy];
    
    
    //// Skin Color
    {
        //// Skin Drawing
        UIBezierPath* skinPath = UIBezierPath.bezierPath;
        [skinPath moveToPoint: CGPointMake(708.92, 210.97)];
        [skinPath addLineToPoint: CGPointMake(4.13, 210.97)];
        [skinPath addCurveToPoint: CGPointMake(209.8, 97.71) controlPoint1: CGPointMake(24.91, 158.13) controlPoint2: CGPointMake(99, 80.86)];
        [skinPath addCurveToPoint: CGPointMake(275.38, 45.39) controlPoint1: CGPointMake(209.8, 97.71) controlPoint2: CGPointMake(226.43, 86.63)];
        [skinPath addCurveToPoint: CGPointMake(317.3, 7.55) controlPoint1: CGPointMake(275.38, 45.39) controlPoint2: CGPointMake(288.91, 19.36)];
        [skinPath addCurveToPoint: CGPointMake(409.65, 24.05) controlPoint1: CGPointMake(345.68, -4.27) controlPoint2: CGPointMake(388.92, -1.87)];
        [skinPath addCurveToPoint: CGPointMake(505.31, 99.56) controlPoint1: CGPointMake(426.38, 44.96) controlPoint2: CGPointMake(486.56, 84.43)];
        [skinPath addCurveToPoint: CGPointMake(708.92, 210.97) controlPoint1: CGPointMake(562.95, 94.05) controlPoint2: CGPointMake(639.7, 97.8)];
        [skinPath addLineToPoint: CGPointMake(708.92, 210.97)];
        [skinPath closePath];
        skinPath.miterLimit = 4;
        
        [self.skinColor setFill];
        [skinPath fill];
        [paths addObject:skinPath];
    }
    
    
    //// Shadow
    {
        //// Main shadow Drawing
        UIBezierPath* mainShadowPath = UIBezierPath.bezierPath;
        [mainShadowPath moveToPoint: CGPointMake(8.75, 210.97)];
        [mainShadowPath addLineToPoint: CGPointMake(4.47, 210.97)];
        [mainShadowPath addCurveToPoint: CGPointMake(169.18, 92.82) controlPoint1: CGPointMake(4.43, 175.12) controlPoint2: CGPointMake(91.93, 96.79)];
        [mainShadowPath addCurveToPoint: CGPointMake(205.41, 96.71) controlPoint1: CGPointMake(177.14, 90.16) controlPoint2: CGPointMake(196.79, 101.08)];
        [mainShadowPath addCurveToPoint: CGPointMake(258.72, 63.09) controlPoint1: CGPointMake(226.21, 86.16) controlPoint2: CGPointMake(247.03, 72.29)];
        [mainShadowPath addLineToPoint: CGPointMake(309.21, 6.07)];
        [mainShadowPath addCurveToPoint: CGPointMake(310.87, 35.11) controlPoint1: CGPointMake(309.21, 6.07) controlPoint2: CGPointMake(313.34, 17.43)];
        [mainShadowPath addCurveToPoint: CGPointMake(299.83, 78.9) controlPoint1: CGPointMake(308.4, 52.8) controlPoint2: CGPointMake(299.32, 76.81)];
        [mainShadowPath addCurveToPoint: CGPointMake(191.46, 122.32) controlPoint1: CGPointMake(305.58, 102.54) controlPoint2: CGPointMake(218.29, 118.13)];
        [mainShadowPath addCurveToPoint: CGPointMake(210.76, 160.54) controlPoint1: CGPointMake(168.49, 125.91) controlPoint2: CGPointMake(198.94, 162.66)];
        [mainShadowPath addCurveToPoint: CGPointMake(296.26, 170.33) controlPoint1: CGPointMake(242.2, 154.9) controlPoint2: CGPointMake(300.35, 162.76)];
        [mainShadowPath addLineToPoint: CGPointMake(194.55, 169.67)];
        [mainShadowPath addLineToPoint: CGPointMake(149.96, 149.04)];
        [mainShadowPath addCurveToPoint: CGPointMake(77.55, 146.12) controlPoint1: CGPointMake(149.96, 149.04) controlPoint2: CGPointMake(117.71, 125.76)];
        [mainShadowPath addCurveToPoint: CGPointMake(8.75, 210.97) controlPoint1: CGPointMake(50.88, 159.65) controlPoint2: CGPointMake(19.56, 199.02)];
        [mainShadowPath closePath];
        mainShadowPath.miterLimit = 4;
        
        [self.skinShadowColor setFill];
        [mainShadowPath fill];
        [paths addObject:mainShadowPath];
        
        
        //// left neck detail Drawing
        UIBezierPath* leftNeckDetailPath = UIBezierPath.bezierPath;
        [leftNeckDetailPath moveToPoint: CGPointMake(311.78, 136.62)];
        [leftNeckDetailPath addCurveToPoint: CGPointMake(341.52, 165.49) controlPoint1: CGPointMake(319.45, 161.08) controlPoint2: CGPointMake(341.52, 165.49)];
        leftNeckDetailPath.miterLimit = 4;
        
        [self.skinShadowColor setFill];
        [leftNeckDetailPath fill];
        
        
        //// Right neck detail Drawing
        UIBezierPath* rightNeckDetailPath = UIBezierPath.bezierPath;
        [rightNeckDetailPath moveToPoint: CGPointMake(391.6, 136.62)];
        [rightNeckDetailPath addCurveToPoint: CGPointMake(361.86, 165.49) controlPoint1: CGPointMake(383.94, 161.08) controlPoint2: CGPointMake(361.86, 165.49)];
        rightNeckDetailPath.miterLimit = 4;
        
        [self.skinShadowColor setFill];
        [rightNeckDetailPath fill];
        [paths addObject:rightNeckDetailPath];
        
        
        //// Right Collarbone Shadow Drawing
        UIBezierPath* rightCollarboneShadowPath = UIBezierPath.bezierPath;
        [rightCollarboneShadowPath moveToPoint: CGPointMake(384.22, 175.65)];
        [rightCollarboneShadowPath addCurveToPoint: CGPointMake(506.92, 161.69) controlPoint1: CGPointMake(416.36, 164.63) controlPoint2: CGPointMake(473.07, 155.06)];
        [rightCollarboneShadowPath addCurveToPoint: CGPointMake(560.24, 144.39) controlPoint1: CGPointMake(536.36, 154.96) controlPoint2: CGPointMake(559.51, 147.33)];
        [rightCollarboneShadowPath addCurveToPoint: CGPointMake(508.64, 153.76) controlPoint1: CGPointMake(540.57, 146.8) controlPoint2: CGPointMake(522.74, 152.77)];
        [rightCollarboneShadowPath addCurveToPoint: CGPointMake(464.2, 151.07) controlPoint1: CGPointMake(479.76, 155.79) controlPoint2: CGPointMake(464.2, 151.07)];
        [rightCollarboneShadowPath addCurveToPoint: CGPointMake(384.22, 175.65) controlPoint1: CGPointMake(399.77, 156.17) controlPoint2: CGPointMake(384.22, 175.65)];
        [rightCollarboneShadowPath closePath];
        rightCollarboneShadowPath.miterLimit = 4;
        
        [self.skinShadowColor setFill];
        [rightCollarboneShadowPath fill];
        [paths addObject:rightCollarboneShadowPath];
    }
    
    
    //// Outline
    {
        //// right shoulder Drawing
        UIBezierPath* rightShoulderPath = UIBezierPath.bezierPath;
        [rightShoulderPath moveToPoint: CGPointMake(711.24, 210.97)];
        [rightShoulderPath addLineToPoint: CGPointMake(705.7, 210.97)];
        [rightShoulderPath addCurveToPoint: CGPointMake(699.88, 198.83) controlPoint1: CGPointMake(703.81, 206.86) controlPoint2: CGPointMake(701.89, 202.82)];
        [rightShoulderPath addCurveToPoint: CGPointMake(653.27, 145.9) controlPoint1: CGPointMake(688.65, 177.47) controlPoint2: CGPointMake(672.04, 160.83)];
        [rightShoulderPath addCurveToPoint: CGPointMake(604.26, 116.2) controlPoint1: CGPointMake(638.05, 133.79) controlPoint2: CGPointMake(621.84, 124.37)];
        [rightShoulderPath addCurveToPoint: CGPointMake(552.13, 99.51) controlPoint1: CGPointMake(587.63, 108.47) controlPoint2: CGPointMake(570.37, 102.06)];
        [rightShoulderPath addCurveToPoint: CGPointMake(503.29, 101.59) controlPoint1: CGPointMake(535.81, 97.22) controlPoint2: CGPointMake(519.38, 98.18)];
        [rightShoulderPath addLineToPoint: CGPointMake(502.29, 101.6)];
        [rightShoulderPath addCurveToPoint: CGPointMake(502.15, 96.68) controlPoint1: CGPointMake(499.66, 100.58) controlPoint2: CGPointMake(499.64, 97.88)];
        [rightShoulderPath addCurveToPoint: CGPointMake(511.7, 94.51) controlPoint1: CGPointMake(505.32, 95.88) controlPoint2: CGPointMake(508.49, 95.16)];
        [rightShoulderPath addCurveToPoint: CGPointMake(607.69, 108.65) controlPoint1: CGPointMake(545.21, 88.29) controlPoint2: CGPointMake(576.93, 94.94)];
        [rightShoulderPath addCurveToPoint: CGPointMake(668.49, 148.7) controlPoint1: CGPointMake(630.31, 118.73) controlPoint2: CGPointMake(650.25, 131.86)];
        [rightShoulderPath addCurveToPoint: CGPointMake(694.43, 177.74) controlPoint1: CGPointMake(678.02, 157.5) controlPoint2: CGPointMake(687.09, 167)];
        [rightShoulderPath addCurveToPoint: CGPointMake(710, 207.92) controlPoint1: CGPointMake(700.86, 187.16) controlPoint2: CGPointMake(705.61, 197.43)];
        [rightShoulderPath addLineToPoint: CGPointMake(711.23, 210.9)];
        [rightShoulderPath addLineToPoint: CGPointMake(711.24, 210.97)];
        [rightShoulderPath closePath];
        rightShoulderPath.miterLimit = 4;
        
        [self.outlineColor setFill];
        [rightShoulderPath fill];
        [paths addObject:rightShoulderPath];
        
        
        //// Left upper shoulder Drawing
        UIBezierPath* leftUpperShoulderPath = UIBezierPath.bezierPath;
        [leftUpperShoulderPath moveToPoint: CGPointMake(159.36, 115.77)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(158.42, 115.41) controlPoint1: CGPointMake(158.8, 115.76) controlPoint2: CGPointMake(158.85, 115.82)];
        [leftUpperShoulderPath addLineToPoint: CGPointMake(158.42, 115.41)];
        [leftUpperShoulderPath addLineToPoint: CGPointMake(158.45, 114.91)];
        [leftUpperShoulderPath addLineToPoint: CGPointMake(158.87, 114.52)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(194.2, 101.65) controlPoint1: CGPointMake(170.34, 109.42) controlPoint2: CGPointMake(182.49, 106.11)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(202.63, 98.05) controlPoint1: CGPointMake(197.05, 100.52) controlPoint2: CGPointMake(199.86, 99.34)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(245.54, 67.22) controlPoint1: CGPointMake(218.45, 90.39) controlPoint2: CGPointMake(232.4, 78.7)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(308.67, 3.72) controlPoint1: CGPointMake(268.06, 47.54) controlPoint2: CGPointMake(288.55, 25.79)];
        [leftUpperShoulderPath addLineToPoint: CGPointMake(309.14, 3.49)];
        [leftUpperShoulderPath addLineToPoint: CGPointMake(309.62, 3.63)];
        [leftUpperShoulderPath addLineToPoint: CGPointMake(309.85, 4.08)];
        [leftUpperShoulderPath addLineToPoint: CGPointMake(309.71, 4.58)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(293.18, 26.06) controlPoint1: CGPointMake(304.26, 11.79) controlPoint2: CGPointMake(298.79, 18.98)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(209.96, 100.63) controlPoint1: CGPointMake(270.2, 54.73) controlPoint2: CGPointMake(244.01, 84.82)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(164.06, 114.26) controlPoint1: CGPointMake(195.41, 107.39) controlPoint2: CGPointMake(179.36, 109.81)];
        [leftUpperShoulderPath addCurveToPoint: CGPointMake(159.36, 115.77) controlPoint1: CGPointMake(162.48, 114.74) controlPoint2: CGPointMake(160.92, 115.24)];
        [leftUpperShoulderPath closePath];
        leftUpperShoulderPath.miterLimit = 4;
        
        [self.outlineColor setFill];
        [leftUpperShoulderPath fill];
        [paths addObject:leftUpperShoulderPath];
        
        
        //// right upper shoulder Drawing
        UIBezierPath* rightUpperShoulderPath = UIBezierPath.bezierPath;
        [rightUpperShoulderPath moveToPoint: CGPointMake(540.93, 117.05)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(498.66, 101.46) controlPoint1: CGPointMake(526.08, 114.73) controlPoint2: CGPointMake(511.41, 109.44)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(481.21, 87.98) controlPoint1: CGPointMake(492.41, 97.54) controlPoint2: CGPointMake(487.06, 92.43)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(439.61, 58.25) controlPoint1: CGPointMake(467.51, 77.8) controlPoint2: CGPointMake(453.28, 68.47)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(414.58, 35.62) controlPoint1: CGPointMake(430.75, 51.52) controlPoint2: CGPointMake(421.6, 44.34)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(407.06, 20.24) controlPoint1: CGPointMake(410.99, 31.15) controlPoint2: CGPointMake(407.72, 26.05)];
        [rightUpperShoulderPath addLineToPoint: CGPointMake(407.02, 19.69)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(407.6, 18.94) controlPoint1: CGPointMake(407.17, 19.2) controlPoint2: CGPointMake(407.11, 19.23)];
        [rightUpperShoulderPath addLineToPoint: CGPointMake(408.08, 19.08)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(408.69, 21.05) controlPoint1: CGPointMake(408.45, 19.68) controlPoint2: CGPointMake(408.51, 20.36)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(410.09, 24.59) controlPoint1: CGPointMake(409.05, 22.28) controlPoint2: CGPointMake(409.53, 23.43)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(425.72, 41.2) controlPoint1: CGPointMake(413.74, 31.33) controlPoint2: CGPointMake(419.75, 36.56)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(456.2, 61.78) controlPoint1: CGPointMake(435.41, 48.72) controlPoint2: CGPointMake(445.94, 55.1)];
        [rightUpperShoulderPath addLineToPoint: CGPointMake(456.2, 61.78)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(482.58, 80.2) controlPoint1: CGPointMake(465.21, 67.61) controlPoint2: CGPointMake(474.2, 73.48)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(497.94, 93.9) controlPoint1: CGPointMake(487.96, 84.52) controlPoint2: CGPointMake(492.73, 89.42)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(504.72, 99.07) controlPoint1: CGPointMake(500.13, 95.71) controlPoint2: CGPointMake(502.39, 97.43)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(541.21, 115.73) controlPoint1: CGPointMake(515.84, 106.55) controlPoint2: CGPointMake(528.24, 112.29)];
        [rightUpperShoulderPath addLineToPoint: CGPointMake(541.68, 116.05)];
        [rightUpperShoulderPath addLineToPoint: CGPointMake(541.8, 116.54)];
        [rightUpperShoulderPath addLineToPoint: CGPointMake(541.49, 116.95)];
        [rightUpperShoulderPath addCurveToPoint: CGPointMake(540.93, 117.05) controlPoint1: CGPointMake(541.3, 116.98) controlPoint2: CGPointMake(541.12, 117.01)];
        [rightUpperShoulderPath closePath];
        rightUpperShoulderPath.miterLimit = 4;
        
        [self.outlineColor setFill];
        [rightUpperShoulderPath fill];
        [paths addObject:rightUpperShoulderPath];
        
        
        //// Right Collarbone Drawing
        UIBezierPath* rightCollarbonePath = UIBezierPath.bezierPath;
        [rightCollarbonePath moveToPoint: CGPointMake(383.68, 176.66)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(382.8, 176.3) controlPoint1: CGPointMake(383.17, 176.65) controlPoint2: CGPointMake(383.21, 176.7)];
        [rightCollarbonePath addLineToPoint: CGPointMake(382.8, 175.8)];
        [rightCollarbonePath addLineToPoint: CGPointMake(383.15, 175.42)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(391.29, 171.81) controlPoint1: CGPointMake(385.83, 174.12) controlPoint2: CGPointMake(388.53, 172.93)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(507.87, 159.24) controlPoint1: CGPointMake(428.07, 157.76) controlPoint2: CGPointMake(469.12, 156.85)];
        [rightCollarbonePath addLineToPoint: CGPointMake(507.87, 159.26)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(538.21, 152.38) controlPoint1: CGPointMake(518.01, 157.11) controlPoint2: CGPointMake(528.17, 154.98)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(557.08, 146.1) controlPoint1: CGPointMake(544.49, 150.75) controlPoint2: CGPointMake(551.29, 149.18)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(559.7, 143.97) controlPoint1: CGPointMake(558.45, 145.37) controlPoint2: CGPointMake(558.86, 144.44)];
        [rightCollarbonePath addLineToPoint: CGPointMake(559.7, 143.96)];
        [rightCollarbonePath addLineToPoint: CGPointMake(560.19, 144.11)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(560.44, 144.9) controlPoint1: CGPointMake(560.42, 144.53) controlPoint2: CGPointMake(560.48, 144.51)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(556.42, 148.45) controlPoint1: CGPointMake(560, 146.57) controlPoint2: CGPointMake(557.77, 147.67)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(541.85, 154.77) controlPoint1: CGPointMake(551.83, 151.07) controlPoint2: CGPointMake(546.8, 152.95)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(518.18, 162.47) controlPoint1: CGPointMake(534.06, 157.63) controlPoint2: CGPointMake(526.14, 160.11)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(508.44, 165.18) controlPoint1: CGPointMake(515.15, 163.37) controlPoint2: CGPointMake(511.48, 164.82)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(497.42, 165.16) controlPoint1: CGPointMake(504.86, 165.61) controlPoint2: CGPointMake(501.05, 165.15)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(479.12, 165.44) controlPoint1: CGPointMake(491.33, 165.17) controlPoint2: CGPointMake(485.22, 165.27)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(446.49, 166.45) controlPoint1: CGPointMake(468.24, 165.65) controlPoint2: CGPointMake(457.36, 165.98)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(389.84, 174.53) controlPoint1: CGPointMake(427.45, 167.44) controlPoint2: CGPointMake(408.19, 169.1)];
        [rightCollarbonePath addCurveToPoint: CGPointMake(383.68, 176.66) controlPoint1: CGPointMake(387.77, 175.19) controlPoint2: CGPointMake(385.72, 175.9)];
        [rightCollarbonePath closePath];
        rightCollarbonePath.miterLimit = 4;
        
        [self.outlineColor setFill];
        [rightCollarbonePath fill];
        [paths addObject:rightCollarbonePath];
        
        
        //// Left Collarbone Drawing
        UIBezierPath* leftCollarbonePath = UIBezierPath.bezierPath;
        [leftCollarbonePath moveToPoint: CGPointMake(324.78, 179.44)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(318.6, 177.34) controlPoint1: CGPointMake(322.73, 178.68) controlPoint2: CGPointMake(320.68, 177.98)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(307.17, 174.62) controlPoint1: CGPointMake(314.82, 176.27) controlPoint2: CGPointMake(311.02, 175.38)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(216.1, 170.78) controlPoint1: CGPointMake(277.24, 169.25) controlPoint2: CGPointMake(246.37, 170.27)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(193.66, 171.48) controlPoint1: CGPointMake(208.65, 170.9) controlPoint2: CGPointMake(201.1, 171.62)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(188.7, 170.08) controlPoint1: CGPointMake(191.99, 171.17) controlPoint2: CGPointMake(190.32, 170.58)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(149.23, 148.7) controlPoint1: CGPointMake(174.45, 165.26) controlPoint2: CGPointMake(161.17, 157.83)];
        [leftCollarbonePath addLineToPoint: CGPointMake(148.3, 147.96)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(148.1, 146.99) controlPoint1: CGPointMake(148.01, 147.5) controlPoint2: CGPointMake(147.99, 147.57)];
        [leftCollarbonePath addLineToPoint: CGPointMake(148.1, 146.99)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(149.08, 146.87) controlPoint1: CGPointMake(148.61, 146.7) controlPoint2: CGPointMake(148.55, 146.75)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(157.56, 151.88) controlPoint1: CGPointMake(151.84, 148.65) controlPoint2: CGPointMake(154.67, 150.33)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(194.09, 165.87) controlPoint1: CGPointMake(169.06, 158.1) controlPoint2: CGPointMake(181.23, 163.28)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(197.6, 165.44) controlPoint1: CGPointMake(195.25, 166.1) controlPoint2: CGPointMake(196.43, 165.57)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(211.95, 164.15) controlPoint1: CGPointMake(202.38, 164.94) controlPoint2: CGPointMake(207.16, 164.51)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(228.3, 163.27) controlPoint1: CGPointMake(217.4, 163.78) controlPoint2: CGPointMake(222.84, 163.47)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(287.4, 167.05) controlPoint1: CGPointMake(248, 162.71) controlPoint2: CGPointMake(267.95, 163.73)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(325.31, 178.2) controlPoint1: CGPointMake(300.43, 169.27) controlPoint2: CGPointMake(313.37, 172.41)];
        [leftCollarbonePath addLineToPoint: CGPointMake(325.67, 178.58)];
        [leftCollarbonePath addLineToPoint: CGPointMake(325.67, 179.08)];
        [leftCollarbonePath addLineToPoint: CGPointMake(325.3, 179.43)];
        [leftCollarbonePath addCurveToPoint: CGPointMake(324.78, 179.44) controlPoint1: CGPointMake(325.13, 179.43) controlPoint2: CGPointMake(324.96, 179.43)];
        [leftCollarbonePath closePath];
        leftCollarbonePath.miterLimit = 4;
        
        [self.outlineColor setFill];
        [leftCollarbonePath fill];
        [paths addObject:leftCollarbonePath];
        
        
        //// Left shoulder Drawing
        UIBezierPath* leftShoulderPath = UIBezierPath.bezierPath;
        [leftShoulderPath moveToPoint: CGPointMake(6.4, 210.97)];
        [leftShoulderPath addLineToPoint: CGPointMake(0.76, 210.97)];
        [leftShoulderPath addCurveToPoint: CGPointMake(5.6, 199.74) controlPoint1: CGPointMake(2.36, 207.1) controlPoint2: CGPointMake(3.92, 203.39)];
        [leftShoulderPath addCurveToPoint: CGPointMake(105.4, 106.83) controlPoint1: CGPointMake(25.31, 157.11) controlPoint2: CGPointMake(63.03, 125.73)];
        [leftShoulderPath addCurveToPoint: CGPointMake(150.43, 92.2) controlPoint1: CGPointMake(119.89, 100.37) controlPoint2: CGPointMake(134.79, 95.05)];
        [leftShoulderPath addCurveToPoint: CGPointMake(210.93, 94.85) controlPoint1: CGPointMake(170.57, 88.54) controlPoint2: CGPointMake(191.14, 89.85)];
        [leftShoulderPath addLineToPoint: CGPointMake(211.83, 95.28)];
        [leftShoulderPath addCurveToPoint: CGPointMake(209.79, 99.76) controlPoint1: CGPointMake(213.75, 97.36) controlPoint2: CGPointMake(212.57, 99.8)];
        [leftShoulderPath addCurveToPoint: CGPointMake(200.45, 98.01) controlPoint1: CGPointMake(206.69, 99.1) controlPoint2: CGPointMake(203.58, 98.52)];
        [leftShoulderPath addCurveToPoint: CGPointMake(108.81, 114.36) controlPoint1: CGPointMake(168.13, 93.31) controlPoint2: CGPointMake(138.06, 100.76)];
        [leftShoulderPath addCurveToPoint: CGPointMake(49.68, 152.53) controlPoint1: CGPointMake(87.23, 124.39) controlPoint2: CGPointMake(67.66, 136.78)];
        [leftShoulderPath addCurveToPoint: CGPointMake(25.75, 177.33) controlPoint1: CGPointMake(41.05, 160.1) controlPoint2: CGPointMake(32.73, 168.18)];
        [leftShoulderPath addCurveToPoint: CGPointMake(6.4, 210.97) controlPoint1: CGPointMake(17.82, 187.76) controlPoint2: CGPointMake(11.83, 199.35)];
        [leftShoulderPath closePath];
        leftShoulderPath.miterLimit = 4;
        
        [self.outlineColor setFill];
        [leftShoulderPath fill];
        [paths addObject:leftShoulderPath];

    }
    
    return paths;
}

@end