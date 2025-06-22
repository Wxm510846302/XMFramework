//
//  XMSDK.m
//  XMFramework
//
//  Created by Xueming Wang on 2025/6/19.
//

#import "XMSDK.h"
//#import <XMFramework/XMFramework-Swift.h>
#ifdef XMONE
#import "XMFramework-Swift.h"  // 自动生成的头文件
#else
#import "XMFrameworkTwo-Swift.h"  // 自动生成的头文件
#endif
#define ADS_MODE_NONE 0
#define ADS_MODE_LIGHT 1
#define ADS_MODE_FULL 2
@implementation XMSDK
- (void)testXMSDK{
//    fix
//    XMSwiftSDK *sdk = [[XMFramework alloc]init];
//    XMSwiftSDKPrivate *xp = [[XMSwiftSDKPrivate alloc]init];
    
#ifdef XMONE
    NSLog(@"XMONE");
#endif
    
#ifdef XMTWO
    NSLog(@"XMTWO");
#endif
    
#if XMOther == ADS_MODE_LIGHT
    NSLog(@"XMOther-ADS_MODE_LIGHT");
#elif XMOther == ADS_MODE_NONE
    NSLog(@"XMOther-ADS_MODE_NONE");
#endif
    
}
@end
