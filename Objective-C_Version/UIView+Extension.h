//
//  UIView+Extension.h
//
//  Created by Joyingx on 15/6/3.
//  Copyright (c) 2015年 Joyingx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;
@property (nonatomic) CGPoint origin;

@property (nonatomic) CGFloat cornerRadius;
@property (nonatomic) CGFloat borderWidth;
@property (nonatomic) UIColor *borderColor;
@property (nonatomic) float shadowOpacity;
@property (nonatomic) CGFloat shadowRadius;
@property (nonatomic) CGSize shadowOffset;
@property (nonatomic) UIColor *shadowColor;
@property (nonatomic) UIBezierPath *shadowPath;

@property (nonatomic) CGSize size;

- (UIImage *)snapshotImage;
- (void)setCornerRadius:(CGFloat)cornerRadius maskToBounds:(BOOL)mask;
- (void)removeAllSubviews;

@end
