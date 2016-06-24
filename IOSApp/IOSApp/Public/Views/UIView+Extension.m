//
//  UIView+Extension.m
//  lw
//
//  Created by apple on 14-6-27.
//  Copyright (c) 2014年 lw. All rights reserved.
//

#import "UIView+Extension.h"

IBInspectable
@implementation UIView (Extension)

//- (instancetype)initWithFrame:(CGRect)frame {
//    if (self = [super initWithFrame:frame]) {
//        
//    }
//    return self;
//}



- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setMaxX:(CGFloat)maxX
{
    self.x = maxX - self.width;
}

- (CGFloat)maxX
{
    return CGRectGetMaxX(self.frame);
}

- (void)setMaxY:(CGFloat)maxY
{
    self.y = maxY - self.height;
}

- (CGFloat)maxY
{
    return CGRectGetMaxY(self.frame);
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size {
//    self.width = size.width;
//    self.height = size.height;
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
- (CGSize)size {
    return self.frame.size;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    [self.layer masksToBounds];
    [self setNeedsDisplay];
}
- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}
- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = [borderColor CGColor];
}
- (UIColor*)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setShadowColor:(UIColor *)shadowColor {
    self.layer.shadowColor = [shadowColor CGColor];
    [self.layer masksToBounds];
    [self setNeedsDisplay];
}
-(UIColor *)shadowColor {
    return [UIColor colorWithCGColor: self.layer.shadowColor];
}

- (void)setShadowOpacity:(float)shadowOpacity {
    self.layer.shadowOpacity = shadowOpacity;
    [self.layer masksToBounds];
    [self setNeedsDisplay];
}
-(float)shadowOpacity {
    return self.layer.shadowOpacity;
}

- (void)setShadowOffsetHorizontal:(CGFloat)shadowOffsetHorizontal {
    [self setShadowOffset:CGSizeMake(shadowOffsetHorizontal, self.layer.shadowOffset.height)];
    [self.layer masksToBounds];
    [self setNeedsDisplay];
}
-(CGFloat)shadowOffsetHorizontal {
    return self.layer.shadowOffset.width;
}

- (void)setShadowOffsetVertical:(CGFloat)shadowOffsetVertical {
    [self setShadowOffset:CGSizeMake(self.layer.shadowOffset.width, shadowOffsetVertical)];
    [self.layer masksToBounds];
    [self setNeedsDisplay];
}
-(CGFloat)shadowOffsetVertical {
    return self.layer.shadowOffset.height;
}

- (void)setShadowOffset:(CGSize)shadowOffset{
    self.layer.shadowOffset = shadowOffset;
    [self.layer masksToBounds];
    [self setNeedsDisplay];
}

- (void)setShadowRadius:(CGFloat)shadowRadius {
    self.layer.shadowRadius = shadowRadius;
    [self.layer masksToBounds];
    [self setNeedsDisplay];
}
-(CGFloat)shadowRadius {
    return self.layer.shadowRadius;
}

@end
