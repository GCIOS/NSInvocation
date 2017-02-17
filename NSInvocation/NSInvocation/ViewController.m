//
//  ViewController.m
//  InvoCation
//
//  Created by 高崇 on 17/2/17.
//  Copyright © 2017年 LieLvWang. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    //方法签名(对方法的描述)
    //    SEL selector = @selector(test:str2:);
    //    NSMethodSignature *sig = [ViewController instanceMethodSignatureForSelector:selector];
    //    // 方法调用者 方法名 方法参数 方法返回值
    //    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:sig];
    //    invocation.target = self;
    //    invocation.selector = selector;
    //
    //    NSString *str1 = @"10086";
    //    NSString *str2 = @"1008611";
    //    [invocation setArgument:&str1 atIndex:2];
    //    [invocation setArgument:&str2 atIndex:3];
    //
    //    [invocation invoke];
    
    
    NSString *str = [self performSelector:@selector(test:str2:str3:) withObjects:@[@1, [NSNull null], @3]];
    NSLog(@"%@", str);
    [self performSelector:@selector(test) withObjects:nil];
}

- (void)test
{
    NSLog(@"%s", __func__);
}

- (void)test:(NSString *)str1 str2:(NSString *)str2
{
    NSLog(@"%s %@  %@", __func__, str1, str2);
}
- (NSString *)test:(NSString *)str1 str2:(NSString *)str2 str3:(NSString *)str3
{
    NSLog(@"%s %@  %@  %@", __func__, str1, str2, str3);
    return @"hello";
}

@end
