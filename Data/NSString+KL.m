//
//  NSString+KL.m
//  KoalaOC
//
//  Created by qiupeng on 2020/6/19.
//

#import "NSString+KL.h"

@implementation NSString (KL)

- (BOOL)kl_isAllSpace {
    NSCharacterSet *set = NSCharacterSet.whitespaceCharacterSet;
    NSString *res = [self stringByTrimmingCharactersInSet:set];
    return res.length == 0;
}

@end
