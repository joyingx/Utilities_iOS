//
//  UIView+Extension.m
//  UtilitiesDemo
//
//  Created by joyingx on 15/6/3.
//  Copyright (c) 2015年 joyingx. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (UIImage *)snapshotImage {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0);
    
    if ([self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)]) {
        [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    } else {
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    }
    
    UIImage *snapshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return snapshot;
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
    return self.center.x;
}

- (CGFloat)centerY {
    return self.center.y;
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
    CGPoint center = self.center;
    center.x       = centerX;
    self.center    = center;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y       = centerY;
    self.center    = center;
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

@end
