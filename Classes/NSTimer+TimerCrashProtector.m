//
//  NSTimer+TimerCrashProtector.m
//  WJAppContext-example
//
//  Created by ada on 2019/3/1.
//  Copyright © 2019年 WJ. All rights reserved.
//

#import "NSTimer+TimerCrashProtector.h"
#import "WJRuntimeUtils.h"



@implementation NSTimer (TimerCrashProtector)

+(void)enableTimerCrashProtector {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [WJRuntimeUtils swizzleClassMethodWithClass:[NSTimer class] orginalMethod:@selector(scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:) replaceMethod:@selector(cp_scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:)];
        [WJRuntimeUtils swizzleClassMethodWithClass:[NSTimer class] orginalMethod:@selector(timerWithTimeInterval:invocation:repeats:) replaceMethod:@selector(cp_timerWithTimeInterval:target:selector:userInfo:repeats:)];
    });
}

+ (NSTimer *)cp_scheduledTimerWithTimeInterval:(NSTimeInterval)timeInterval target:(id)target selector:(SEL)selector userInfo:(id)userInfo repeats:(BOOL)repeats {
    return nil;
}

+ (NSTimer *)cp_timerWithTimeInterval:(NSTimeInterval)timeInterval target:(id)target selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo {
    
    return nil;
}

@end
