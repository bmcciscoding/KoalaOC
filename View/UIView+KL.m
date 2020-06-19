//
//  UIView+KL.m
//  KoalaOC
//
//  Created by qiupeng on 2020/6/19.
//

#import "UIView+KL.h"

@implementation UIView (KL)

- (void)kl_setRetangeCornerTopLeft:(CGFloat)tf
                          topRight:(CGFloat)tr
                        bottomLeft:(CGFloat)bl
                       bottomRight:(CGFloat)br {
    self.layer.mask = ({
        CAShapeLayer *layer = [CAShapeLayer layer];
        layer.path = ({
            CGFloat width = self.frame.size.width;
            CGFloat height = self.frame.size.height;
            UIBezierPath *maskPath = [UIBezierPath bezierPath];
            // 左上
            [maskPath moveToPoint:CGPointMake(0, tf)];
            [maskPath addArcWithCenter:CGPointMake(tf, tf) radius:tf startAngle:-M_PI endAngle:-M_PI_2 clockwise:YES];
            // 右上
            [maskPath addLineToPoint:CGPointMake(width - tr, 0)];
            [maskPath addArcWithCenter:CGPointMake(width - tr, tr) radius:tr startAngle:-M_PI_2 endAngle:0 clockwise:YES];
            // 右下
            [maskPath addLineToPoint:CGPointMake(width, width - br)];
            [maskPath addArcWithCenter:CGPointMake(width - br, height - br) radius:br startAngle:0 endAngle:M_PI_2 clockwise:YES];
            // 左下
            [maskPath addLineToPoint:CGPointMake(bl, height)];
            [maskPath addArcWithCenter:CGPointMake(bl, height - bl) radius:bl startAngle:M_PI_2 endAngle:M_PI clockwise:YES];
            
            [maskPath addLineToPoint:CGPointMake(0, tf)];
            maskPath.CGPath;
        });
        layer;
    });
    
}

@end
