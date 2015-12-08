//
//  UIView+YCTransition.m
//  YCTransition
//
//  Created by yaochao on 15/12/8.
//  Copyright © 2015年 YaoChao. All rights reserved.
//

#import "UIView+YCTransition.h"

@implementation UIView (YCTransition)

- (instancetype)addTransition:(YCTransitionType)transitionType direction:(YCTransitionDirection)directionType duration:(CGFloat)duration {
    
    NSArray *transitionArr = @[
                               @"cameraIris",
                               @"cube",
                               @"fade",
                               @"moveIn",
                               @"oglFlip",
                               @"pageCurl",
                               @"pageUnCurl",
                               @"push",
                               @"reveal",
                               @"rippleEffect",
                               @"suckEffect"
                               ];
    
    NSArray *directionArr = @[
                               @"fromLeft",
                               @"fromRight",
                               @"fromTop",
                               @"fromBottom"
                               ];
    
    CATransition *transition = [CATransition animation];
    transition.duration = duration;
    transition.type = transitionArr[transitionType];
    transition.subtype = directionArr[directionType];
    [self.layer addAnimation:transition forKey:nil];
    
    return self;
}

@end
