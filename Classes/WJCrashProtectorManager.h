//
//  WJCrashProtectorManager.h
//  WJCrashProtector-example
//
//  Created by ada on 2019/3/11.
//  Copyright © 2019年 WJ. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_OPTIONS(NSInteger, WJCrashProtectorType) {
    WJCrashProtectorTypeNone                        = 0,
    WJCrashProtectorTypeAll                         = 1 << 1,
    WJCrashProtectorTypeUnrecognizedSelector        = 2 << 1,
    WJCrashProtectorTypeKVO                         = 3 << 1,
    WJCrashProtectorTypeString                      = 4 << 1,
    WJCrashProtectorTypeContainer                   = 5 << 1,
    WJCrashProtectorTypeTimer                       = 6 << 1,
    WJCrashProtectorTypeNotification                = 7 << 1,
};


/**
 崩溃防护器管理
 */
@interface WJCrashProtectorManager : NSObject

/**
 开启防护器
 注意：首次调用有效
 */
+ (void)enabledCrashProtector:(WJCrashProtectorType)types;

@end
