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

@property (strong, nonatomic) UIColor *skinBaseColor;
@property (strong, nonatomic) UIColor *skinShadowColor;
@property (strong, nonatomic) UIColor *outlineColor;


@end

@implementation CHDrawingData

//starting skin tone is set here
- (id)init {
    self = [super init];
    if (self) {
        self.outlineColor = [UIColor blackColor];
        self.skinBaseColor = [AvatarColors skinTone24];
        
        //set skin shadow color
        UIColor *skinBase = self.skinBaseColor;
        CGFloat skinBaseRGBA[4];
        [skinBase getRed: &skinBaseRGBA[0] green: &skinBaseRGBA[1] blue: &skinBaseRGBA[2] alpha: &skinBaseRGBA[3]];
        
        self.skinShadowColor = [UIColor colorWithRed: (skinBaseRGBA[0] * 0.8) green: (skinBaseRGBA[1] * 0.8) blue: (skinBaseRGBA[2] * 0.8) alpha: (skinBaseRGBA[3] * 0.8 + 0.2)];
    }
    
    return self;
}

#pragma mark - Shoulders

- (UIImage *)drawShoulders
{
    
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
        
        [self.skinBaseColor setFill];
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

- (NSMutableArray *)drawNeck
{
    NSMutableArray *paths = [@[] mutableCopy];
    //// Skin
    {
        //// Neck skin Drawing
        UIBezierPath* neckSkinPath = UIBezierPath.bezierPath;
        [neckSkinPath moveToPoint: CGPointMake(20.67, 89.78)];
        [neckSkinPath addCurveToPoint: CGPointMake(2.02, 207.66) controlPoint1: CGPointMake(19.04, 157.46) controlPoint2: CGPointMake(16.06, 170.02)];
        [neckSkinPath addCurveToPoint: CGPointMake(188.68, 210.22) controlPoint1: CGPointMake(33.75, 237.64) controlPoint2: CGPointMake(141.64, 230.45)];
        [neckSkinPath addCurveToPoint: CGPointMake(199.78, 167.58) controlPoint1: CGPointMake(218.83, 197.25) controlPoint2: CGPointMake(203.58, 174.48)];
        [neckSkinPath addCurveToPoint: CGPointMake(196.97, 7.92) controlPoint1: CGPointMake(176.91, 81.43) controlPoint2: CGPointMake(193.48, 86.43)];
        [neckSkinPath addCurveToPoint: CGPointMake(20.12, 12.37) controlPoint1: CGPointMake(106.23, 6.03) controlPoint2: CGPointMake(20.12, 12.37)];
        [neckSkinPath addCurveToPoint: CGPointMake(20.67, 89.78) controlPoint1: CGPointMake(23.73, 60.73) controlPoint2: CGPointMake(20.67, 89.78)];
        [neckSkinPath closePath];
        neckSkinPath.miterLimit = 4;
        
        [self.skinBaseColor setFill];
        [neckSkinPath fill];
        [paths addObject:neckSkinPath];
    }
    
    
    //// Shadow
    {
        //// Neck Shadow Drawing
        UIBezierPath* neckShadowPath = UIBezierPath.bezierPath;
        [neckShadowPath moveToPoint: CGPointMake(17.65, 89.18)];
        [neckShadowPath addLineToPoint: CGPointMake(20.33, 10.94)];
        [neckShadowPath addLineToPoint: CGPointMake(86.67, 9.88)];
        [neckShadowPath addCurveToPoint: CGPointMake(86.36, 157.38) controlPoint1: CGPointMake(36.55, 32.5) controlPoint2: CGPointMake(74.49, 156.59)];
        [neckShadowPath addCurveToPoint: CGPointMake(99.12, 153.33) controlPoint1: CGPointMake(96.2, 158.04) controlPoint2: CGPointMake(98.53, 156.75)];
        [neckShadowPath addCurveToPoint: CGPointMake(51.06, 159.2) controlPoint1: CGPointMake(94.75, 177.69) controlPoint2: CGPointMake(51.06, 159.2)];
        [neckShadowPath addCurveToPoint: CGPointMake(36.57, 182.42) controlPoint1: CGPointMake(66.8, 186.32) controlPoint2: CGPointMake(41.91, 181.75)];
        [neckShadowPath addCurveToPoint: CGPointMake(1.14, 207.27) controlPoint1: CGPointMake(22.32, 178.6) controlPoint2: CGPointMake(1.14, 207.27)];
        [neckShadowPath addCurveToPoint: CGPointMake(17.65, 89.18) controlPoint1: CGPointMake(19, 171.66) controlPoint2: CGPointMake(19.68, 88.13)];
        [neckShadowPath closePath];
        neckShadowPath.miterLimit = 4;
        
        [self.skinShadowColor setFill];
        [neckShadowPath fill];
        [paths addObject:neckShadowPath];
    }
    
    
    //// Outline
    {
        //// Bezier 28 Drawing
        UIBezierPath* bezier28Path = UIBezierPath.bezierPath;
        [bezier28Path moveToPoint: CGPointMake(8.03, 190.87)];
        [bezier28Path addLineToPoint: CGPointMake(8.03, 190.87)];
        [bezier28Path addLineToPoint: CGPointMake(7.61, 190.58)];
        [bezier28Path addLineToPoint: CGPointMake(7.49, 190.03)];
        [bezier28Path addCurveToPoint: CGPointMake(11.07, 155.3) controlPoint1: CGPointMake(8.86, 178.47) controlPoint2: CGPointMake(9.95, 166.89)];
        [bezier28Path addCurveToPoint: CGPointMake(17.83, 72.32) controlPoint1: CGPointMake(13.61, 127.67) controlPoint2: CGPointMake(15.74, 99.99)];
        [bezier28Path addCurveToPoint: CGPointMake(19.26, 46.84) controlPoint1: CGPointMake(18.43, 63.83) controlPoint2: CGPointMake(18.91, 55.34)];
        [bezier28Path addCurveToPoint: CGPointMake(18.6, 10.83) controlPoint1: CGPointMake(19.65, 34.83) controlPoint2: CGPointMake(19.64, 22.82)];
        [bezier28Path addLineToPoint: CGPointMake(18.74, 10.33)];
        [bezier28Path addLineToPoint: CGPointMake(19.17, 10.08)];
        [bezier28Path addLineToPoint: CGPointMake(19.66, 10.21)];
        [bezier28Path addLineToPoint: CGPointMake(19.93, 10.65)];
        [bezier28Path addCurveToPoint: CGPointMake(21.91, 22.91) controlPoint1: CGPointMake(20.69, 14.72) controlPoint2: CGPointMake(21.34, 18.8)];
        [bezier28Path addCurveToPoint: CGPointMake(9.1, 188.93) controlPoint1: CGPointMake(28.82, 78.43) controlPoint2: CGPointMake(20.72, 134.62)];
        [bezier28Path addLineToPoint: CGPointMake(8.81, 190.25)];
        [bezier28Path addLineToPoint: CGPointMake(8.52, 190.73)];
        [bezier28Path addCurveToPoint: CGPointMake(8.03, 190.87) controlPoint1: CGPointMake(8.35, 190.78) controlPoint2: CGPointMake(8.19, 190.82)];
        [bezier28Path closePath];
        bezier28Path.miterLimit = 4;
        
        [self.outlineColor setFill];
        [bezier28Path fill];
        [paths addObject:bezier28Path];
        
        
        //// Bezier 30 Drawing
        UIBezierPath* bezier30Path = UIBezierPath.bezierPath;
        [bezier30Path moveToPoint: CGPointMake(85.45, 165.27)];
        [bezier30Path addCurveToPoint: CGPointMake(84.74, 165.15) controlPoint1: CGPointMake(85.01, 165.24) controlPoint2: CGPointMake(85.09, 165.31)];
        [bezier30Path addCurveToPoint: CGPointMake(82.06, 162.87) controlPoint1: CGPointMake(83.75, 164.52) controlPoint2: CGPointMake(82.91, 163.68)];
        [bezier30Path addCurveToPoint: CGPointMake(68.17, 146.99) controlPoint1: CGPointMake(77.1, 157.9) controlPoint2: CGPointMake(72.57, 152.46)];
        [bezier30Path addCurveToPoint: CGPointMake(62.8, 140.3) controlPoint1: CGPointMake(67.45, 146.1) controlPoint2: CGPointMake(63.34, 140.58)];
        [bezier30Path addCurveToPoint: CGPointMake(61.38, 138.98) controlPoint1: CGPointMake(62.27, 139.92) controlPoint2: CGPointMake(61.77, 139.51)];
        [bezier30Path addCurveToPoint: CGPointMake(51.66, 112.71) controlPoint1: CGPointMake(56.06, 131.7) controlPoint2: CGPointMake(53.86, 121.2)];
        [bezier30Path addCurveToPoint: CGPointMake(39.91, 44.2) controlPoint1: CGPointMake(45.86, 90.27) controlPoint2: CGPointMake(42.8, 67.16)];
        [bezier30Path addLineToPoint: CGPointMake(40.03, 43.69)];
        [bezier30Path addLineToPoint: CGPointMake(40.44, 43.41)];
        [bezier30Path addLineToPoint: CGPointMake(40.93, 43.52)];
        [bezier30Path addLineToPoint: CGPointMake(41.23, 43.94)];
        [bezier30Path addCurveToPoint: CGPointMake(57.85, 106.87) controlPoint1: CGPointMake(46.8, 64.91) controlPoint2: CGPointMake(52.64, 85.81)];
        [bezier30Path addCurveToPoint: CGPointMake(63.42, 129.26) controlPoint1: CGPointMake(59.74, 114.32) controlPoint2: CGPointMake(61.33, 121.85)];
        [bezier30Path addCurveToPoint: CGPointMake(65.39, 134.89) controlPoint1: CGPointMake(63.99, 131.17) controlPoint2: CGPointMake(64.58, 133.06)];
        [bezier30Path addCurveToPoint: CGPointMake(66.71, 136.63) controlPoint1: CGPointMake(65.77, 135.67) controlPoint2: CGPointMake(66.19, 135.96)];
        [bezier30Path addCurveToPoint: CGPointMake(81.26, 158.76) controlPoint1: CGPointMake(71.5, 144.04) controlPoint2: CGPointMake(76.14, 151.57)];
        [bezier30Path addCurveToPoint: CGPointMake(85.54, 164.04) controlPoint1: CGPointMake(82.37, 160.35) controlPoint2: CGPointMake(83.79, 162.99)];
        [bezier30Path addLineToPoint: CGPointMake(85.87, 164.46)];
        [bezier30Path addLineToPoint: CGPointMake(85.84, 164.95)];
        [bezier30Path addLineToPoint: CGPointMake(85.84, 164.95)];
        [bezier30Path addCurveToPoint: CGPointMake(85.45, 165.27) controlPoint1: CGPointMake(85.71, 165.06) controlPoint2: CGPointMake(85.58, 165.17)];
        [bezier30Path closePath];
        [bezier30Path moveToPoint: CGPointMake(65.92, 135.86)];
        [bezier30Path addCurveToPoint: CGPointMake(65.88, 135.82) controlPoint1: CGPointMake(65.9, 135.83) controlPoint2: CGPointMake(65.85, 135.79)];
        [bezier30Path addCurveToPoint: CGPointMake(65.92, 135.86) controlPoint1: CGPointMake(65.9, 135.85) controlPoint2: CGPointMake(65.89, 135.83)];
        [bezier30Path closePath];
        [bezier30Path moveToPoint: CGPointMake(65.7, 135.73)];
        [bezier30Path addLineToPoint: CGPointMake(65.69, 135.72)];
        [bezier30Path addLineToPoint: CGPointMake(65.65, 135.7)];
        [bezier30Path addCurveToPoint: CGPointMake(65.7, 135.73) controlPoint1: CGPointMake(65.67, 135.71) controlPoint2: CGPointMake(65.69, 135.72)];
        [bezier30Path closePath];
        bezier30Path.miterLimit = 4;
        
        [self.outlineColor setFill];
        [bezier30Path fill];
        [paths addObject:bezier30Path];
        
        
        //// Bezier 32 Drawing
        UIBezierPath* bezier32Path = UIBezierPath.bezierPath;
        [bezier32Path moveToPoint: CGPointMake(200.36, 182.29)];
        [bezier32Path addCurveToPoint: CGPointMake(198.15, 179.28) controlPoint1: CGPointMake(199.2, 181.76) controlPoint2: CGPointMake(198.64, 180.38)];
        [bezier32Path addCurveToPoint: CGPointMake(195.49, 171.12) controlPoint1: CGPointMake(196.99, 176.66) controlPoint2: CGPointMake(196.21, 173.88)];
        [bezier32Path addCurveToPoint: CGPointMake(189.3, 136.94) controlPoint1: CGPointMake(192.59, 159.91) controlPoint2: CGPointMake(190.86, 148.4)];
        [bezier32Path addCurveToPoint: CGPointMake(193.12, 3.94) controlPoint1: CGPointMake(183.36, 93.19) controlPoint2: CGPointMake(183.16, 47.13)];
        [bezier32Path addLineToPoint: CGPointMake(193.81, 1.16)];
        [bezier32Path addCurveToPoint: CGPointMake(194.6, 0.63) controlPoint1: CGPointMake(194.11, 0.74) controlPoint2: CGPointMake(194.04, 0.75)];
        [bezier32Path addLineToPoint: CGPointMake(195.01, 0.91)];
        [bezier32Path addLineToPoint: CGPointMake(195.13, 1.42)];
        [bezier32Path addCurveToPoint: CGPointMake(193.69, 13.1) controlPoint1: CGPointMake(194.56, 5.31) controlPoint2: CGPointMake(194.09, 9.19)];
        [bezier32Path addCurveToPoint: CGPointMake(192.62, 80.61) controlPoint1: CGPointMake(191.7, 35.54) controlPoint2: CGPointMake(191.96, 58.11)];
        [bezier32Path addCurveToPoint: CGPointMake(194.27, 130.26) controlPoint1: CGPointMake(193.1, 97.16) controlPoint2: CGPointMake(193.43, 113.72)];
        [bezier32Path addCurveToPoint: CGPointMake(197.04, 164.9) controlPoint1: CGPointMake(194.85, 141.82) controlPoint2: CGPointMake(195.55, 153.42)];
        [bezier32Path addCurveToPoint: CGPointMake(200.44, 180.53) controlPoint1: CGPointMake(197.69, 169.91) controlPoint2: CGPointMake(198.1, 175.95)];
        [bezier32Path addCurveToPoint: CGPointMake(200.87, 181.17) controlPoint1: CGPointMake(200.63, 180.86) controlPoint2: CGPointMake(200.7, 180.95)];
        [bezier32Path addCurveToPoint: CGPointMake(200.83, 182.13) controlPoint1: CGPointMake(201.04, 181.67) controlPoint2: CGPointMake(201.07, 181.61)];
        [bezier32Path addLineToPoint: CGPointMake(200.83, 182.13)];
        [bezier32Path addCurveToPoint: CGPointMake(200.36, 182.29) controlPoint1: CGPointMake(200.67, 182.18) controlPoint2: CGPointMake(200.52, 182.24)];
        [bezier32Path closePath];
        bezier32Path.miterLimit = 4;
        
        [self.outlineColor setFill];
        [bezier32Path fill];
        [paths addObject:bezier32Path];
        
        
        //// Bezier 34 Drawing
        UIBezierPath* bezier34Path = UIBezierPath.bezierPath;
        [bezier34Path moveToPoint: CGPointMake(131.16, 152.55)];
        [bezier34Path addLineToPoint: CGPointMake(130.7, 152.4)];
        [bezier34Path addLineToPoint: CGPointMake(130.52, 151.95)];
        [bezier34Path addCurveToPoint: CGPointMake(135.82, 142.6) controlPoint1: CGPointMake(131.53, 148.84) controlPoint2: CGPointMake(134.29, 145.51)];
        [bezier34Path addCurveToPoint: CGPointMake(142.07, 130.14) controlPoint1: CGPointMake(137.89, 138.52) controlPoint2: CGPointMake(139.56, 133.96)];
        [bezier34Path addCurveToPoint: CGPointMake(142.6, 129.59) controlPoint1: CGPointMake(142.55, 129.61) controlPoint2: CGPointMake(142.7, 129.48)];
        [bezier34Path addCurveToPoint: CGPointMake(143.5, 127.02) controlPoint1: CGPointMake(143.07, 128.83) controlPoint2: CGPointMake(143.28, 127.87)];
        [bezier34Path addCurveToPoint: CGPointMake(145.56, 108.93) controlPoint1: CGPointMake(144.81, 121.14) controlPoint2: CGPointMake(145.06, 114.92)];
        [bezier34Path addCurveToPoint: CGPointMake(147.44, 80.99) controlPoint1: CGPointMake(146.35, 99.63) controlPoint2: CGPointMake(146.95, 90.31)];
        [bezier34Path addLineToPoint: CGPointMake(147.64, 80.5)];
        [bezier34Path addLineToPoint: CGPointMake(148.07, 80.27)];
        [bezier34Path addLineToPoint: CGPointMake(148.52, 80.44)];
        [bezier34Path addLineToPoint: CGPointMake(148.78, 80.9)];
        [bezier34Path addCurveToPoint: CGPointMake(151.36, 97.18) controlPoint1: CGPointMake(149.76, 86.32) controlPoint2: CGPointMake(150.62, 91.72)];
        [bezier34Path addCurveToPoint: CGPointMake(151.31, 124.21) controlPoint1: CGPointMake(152.45, 106.09) controlPoint2: CGPointMake(153.11, 115.35)];
        [bezier34Path addCurveToPoint: CGPointMake(146.57, 134.29) controlPoint1: CGPointMake(150.6, 127.74) controlPoint2: CGPointMake(149.45, 131.88)];
        [bezier34Path addCurveToPoint: CGPointMake(144.91, 136.61) controlPoint1: CGPointMake(145.76, 134.8) controlPoint2: CGPointMake(145.47, 135.84)];
        [bezier34Path addCurveToPoint: CGPointMake(138.82, 144.58) controlPoint1: CGPointMake(142.94, 139.32) controlPoint2: CGPointMake(140.93, 141.97)];
        [bezier34Path addCurveToPoint: CGPointMake(133.76, 150.35) controlPoint1: CGPointMake(137.18, 146.55) controlPoint2: CGPointMake(135.53, 148.5)];
        [bezier34Path addCurveToPoint: CGPointMake(131.16, 152.55) controlPoint1: CGPointMake(132.97, 151.14) controlPoint2: CGPointMake(132.22, 152.12)];
        [bezier34Path closePath];
        bezier34Path.miterLimit = 4;
        
        [self.outlineColor setFill];
        [bezier34Path fill];
        [paths addObject:bezier34Path];
    }
    
    return paths;

}




@end