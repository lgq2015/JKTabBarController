//
//  JKBlurView.m
//
//  Created by liangguoqiang on 15/5/7.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "JKBlurView.h"

@interface JKBlurView ()

@property (nonatomic, strong) UIToolbar *toolbar;

@end

@implementation JKBlurView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.alpha  = 0.65f;
    [self setClipsToBounds:YES];
    
    if (![self toolbar]) {
        [self setToolbar:[[UIToolbar alloc] initWithFrame:[self bounds]]];
        [self.layer insertSublayer:[self.toolbar layer] atIndex:0];
    }
}
- (void) setBlurTintColor:(UIColor *)blurTintColor {
    [self.toolbar setBarTintColor:blurTintColor];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self.toolbar setFrame:[self bounds]];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
   return NO;
}

@end
