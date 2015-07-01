//
//  CALayer+Extension.h
//  UtilitiesDemo
//
//  Created by joyingx on 15/6/4.
//  Copyright (c) 2015年 joyingx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CALayer (Extension)

@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;
@property (nonatomic) CGPoint center;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize  size;

- (void)removeAllSublayer;
- (UIImage *)snapshotImage;
- (void)setShadow:(UIColor*)color offset:(CGSize)offset radius:(CGFloat)radius;
- (void)setCornerRadius:(CGFloat)cornerRadius maskToBounds:(BOOL)mask;

@end
