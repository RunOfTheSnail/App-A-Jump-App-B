//
//  SchemesTools.m
//  App-B
//
//  Created by zhangyan on 2017/4/26.
//  Copyright © 2017年 zhangyan. All rights reserved.
//

#import "SchemesTools.h"

@implementation SchemesTools

+ (SchemesTools *)shareSchemesTools
{
    static SchemesTools * tools = nil;
    if (tools == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            tools = [[SchemesTools alloc] init];
        });
    }
    return tools;
}

@end
