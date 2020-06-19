//
//  UIView+KL.h
//  KoalaOC
//
//  Created by qiupeng on 2020/6/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (KL)

/// 设置矩形四边自定义圆角
- (void)kl_setRetangeCornerTopLeft:(CGFloat)tf
                          topRight:(CGFloat)tr
                        bottomLeft:(CGFloat)bl
                       bottomRight:(CGFloat)br;

@end

NS_ASSUME_NONNULL_END
