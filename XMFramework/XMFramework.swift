//
//  XMFramework.swift
//  XMFramework
//
//  Created by Xueming Wang on 2025/6/19.
//

import Foundation
import XMFrameworkPrivate

// MARK: - 核心框架类定义
@objc(XMFrameworkSDK)
public class XMFrameworkSDK: NSObject {
    // 单例模式确保全局唯一
    @objc public static let shared = XMFrameworkSDK()
    
    private override init() {
        super.init()
        registerUserProfileModule()
#if DEBUG
        print("debug")
#else
        print("release")
#endif
#if XMONE
        print("XMONE")
#endif
#if XMTWO
        print("XMTWO")
#endif
        
    }
}
//// MARK: - 注册扩展
//extension XMFrameworkSDK {
//    // 组件内部实现注册
//    private func registerUserProfileModule() {
//        ServiceCenter.register(ProfileRouter(), for: ProfileRouting.self)
//        ServiceCenter.register(FirebaseAnalytics(), for: AnalyticsService.self)
//        ServiceCenter.register(DefaultUserModule(), for: UserModule.self)
//    }
//}
