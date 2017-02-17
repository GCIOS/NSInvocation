//
//  NSObject+Extension.m
//  InvoCation
//
//  Created by 高崇 on 17/2/17.
//  Copyright © 2017年 LieLvWang. All rights reserved.
//

#import "NSObject+Extension.h"

@implementation NSObject (Extension)

- (id)performSelector:(SEL)aSelector withObjects:(NSArray *)objects{
    //方法签名(对方法的描述)
    
    NSMethodSignature *sig = [[self class] instanceMethodSignatureForSelector:aSelector];
    if (sig == nil) return nil;
    
    // 方法调用者 方法名 方法参数 方法返回值
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:sig];
    invocation.target = self;
    invocation.selector = aSelector;
    
    for (int i = 0; i< objects.count; i++) {
        id objct = objects[i];
        if ([objct isKindOfClass:[NSNull class]]) continue;
        [invocation setArgument:&objct atIndex:i+2];
    }
    //调用方法
    [invocation invoke];
    
    // 获取返回值
    id result = nil;
    if (sig.methodReturnLength) {// 没有返回值 sig.methodReturnLength = 0
        [invocation getReturnValue:&result];
    }
    
    return result;
}

@end
