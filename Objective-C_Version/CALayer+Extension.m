//
//  CALayer+Extension.m
//
//  Created by Joyingx on 15/6/4.
//  Copyright (c) 2015年 Joyingx. All rights reserved.
//

#import "CALayer+Extension.h"

@implementation CALayer (Extension)
- (void)removeAllSublayer {
    while (self.sublayers.count) {
        [[self.sublayers firstObject] removeFromSuperlayer];
    }
}

- (UIImage *)snapshotImage {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0);
    [self renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (void)setShadow:(UIColor *)color offset:(CGSize)offset radius:(CGFloat)radius {
    self.shadowColor        = color.CGColor;
    self.shadowOffset       = offset;
    self.shadowRadius       = radius;
    self.shadowOpacity      = 1;
    self.shouldRasterize    = YES;
    self.rasterizationScale = [UIScreen mainScreen].scale;
}

#pragma mark - Getter Methods
- (CGFloat)left {
    return self.frame.origin.x;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (CGFloat)centerX {
    return self.left + self.width / 2.0;
}

- (CGFloat)centerY {
    return self.top + self.height / 2.0;
}

- (CGPoint)center {
    return CGPointMake(self.centerX, self.centerY);
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (CGSize)size {
    return self.frame.size;
}

#pragma mark - Setter Methods
- (void)setLeft:(CGFloat)left {
    CGRect frame   = self.frame;
    frame.origin.x = left;
    self.frame     = frame;
}

- (void)setTop:(CGFloat)top {
    CGRect frame   = self.frame;
    frame.origin.y = top;
    self.frame     = frame;
}

- (void)setRight:(CGFloat)right {
    CGRect frame   = self.frame;
    frame.origin.x = right - self.width;
    self.frame     = frame;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame   = self.frame;
    frame.origin.y = bottom - self.height;
    self.frame     = frame;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame     = self.frame;
    frame.size.width = width;
    self.frame       = frame;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame      = self.frame;
    frame.size.height = height;
    self.frame        = frame;
}

- (void)setCenterX:(CGFloat)centerX {
    CGRect frame   = self.frame;
    frame.origin.x = centerX - self.width / 2.0f;
    self.frame     = frame;
}

- (void)setCenterY:(CGFloat)centerY {
    CGRect frame   = self.frame;
    frame.origin.y = centerY - self.height / 2.0f;
    self.frame     = frame;
}

- (void)setCenter:(CGPoint)center {
    CGRect frame   = self.frame;
    frame.origin.x = center.x - self.width / 2.0f;
    frame.origin.y = center.y - self.height / 2.0f;
    self.frame     = frame;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame   = frame;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size   = size;
    self.frame   = frame;
}

- (void)setCornerRadius:(CGFloat)cornerRadius maskToBounds:(BOOL)mask {
    self.cornerRadius = cornerRadius;
    self.masksToBounds = mask;
}
@end
