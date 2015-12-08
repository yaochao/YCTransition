//
//  UIView+YCTransition.h
//  YCTransition
//
//  Created by yaochao on 15/12/8.
//  Copyright © 2015年 YaoChao. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  TransitionType
 */
typedef NS_ENUM(NSUInteger, YCTransitionType) {
    YCTransitionTypeCameral=0,  //相机
    YCTransitionTypeCube,       //立方体
    YCTransitionTypeFade,       //淡入
    YCTransitionTypeMoveIn,     //移入
    YCTransitionTypeFlip,       //翻转
    YCTransitionTypeCurl,       //翻页
    YCTransitionTypeUnCurl,     //添页
    YCTransitionTypePush,       //平移
    YCTransitionTypeReveal,     //移走
    YCTransitionTypeRipple,     //水波
    YCTransitionTypeSuck,       //收起
};

/**
 *  TransitionDirection
 *  注意：有些动画效果不支持自定义方向
 */
typedef NS_ENUM(NSUInteger, YCTransitionDirection)
{
    YCTransitionDirectionLeft=0, // 从左向右
    YCTransitionDirectionRight,  // 从右向左
    YCTransitionDirectionTop,    // 从下向上
    YCTransitionDirectionBottom, // 从上向下
};


@interface UIView (YCTransition)
/**
 *  添加转场动画
 *
 *  @param transitionType 转场动画类型
 *  @param direction      转场动画方向
 *  @param duration       转场动画时间
 *
 *  @return 返回这个view本身
 */
-(void)addTransition:(YCTransitionType)transitionType direction:(YCTransitionDirection)directionType duration:(CGFloat)duration;

@end
