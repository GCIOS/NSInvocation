//
//  NSObject+Extension.h
//  InvoCation
//
//  Created by 高崇 on 17/2/17.
//  Copyright © 2017年 LieLvWang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

- (id)performSelector:(SEL)aSelector withObjects:(NSArray *)objects;
@end
