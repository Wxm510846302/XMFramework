//
//  ServiceCenter.swift
//  XMFramework
//
//  Created by Xueming Wang on 2025/6/23.
//

import Foundation
import UIKit
//ServiceCenter 是一个公共基础设施模块中的工具类，所有模块都可以访问，它通常被放在你项目中的「核心基础层」或者「平台层（Platform）」中，用来实现模块之间的服务注册和解耦调用。

// 其他模块调用（如“消息模块”）
//let router = ServiceCenter.resolve(ProfileRouting.self)
//router?.pushProfile(from: self, userId: "123")
//(router as AnyObject).pushProfile(from: self, userId: "123")

// 服务中心 - 使用协议类型作为键确保唯一性
@objc public class ServiceCenter: NSObject {
    private static var services = [String: Any]()
    private static let lock = NSLock()
    @objc public static func register(_ service: Any, for protocolType: Protocol) {
        lock.lock()
        defer { lock.unlock() }
        let key = NSStringFromProtocol(protocolType)
        services[key] = service
    }
    
    @objc public static func resolve(_ protocolType: Protocol) -> Any? {
        lock.lock()
        defer { lock.unlock() }
        let key = NSStringFromProtocol(protocolType)
        return services[key]
    }
}
// MARK: - 注册扩展
extension XMFrameworkSDK {
    // 组件内部实现注册
    func registerUserProfileModule() {
        ServiceCenter.register(ProfileRouter(), for: ProfileRouting.self)
        ServiceCenter.register(FirebaseAnalytics(), for: AnalyticsService.self)
        ServiceCenter.register(DefaultUserModule(), for: UserModule.self)
    }
}
// MARK: - 协议定义
@objc public protocol ProfileRouting:NSObjectProtocol {
    func pushProfile(from: UIViewController, userId: String)
}

@objc public protocol AnalyticsService:NSObjectProtocol {
    func track(event: String)
}

@objc public protocol UserModule: ProfileRouting, AnalyticsService {
    func test(event: String)
}


// MARK: - 服务实现
// 内部实现类不需要公开
class ProfileRouter: NSObject, ProfileRouting {
    func pushProfile(from: UIViewController, userId: String) {
        print("导航到用户主页: \(userId)")
        // 实际实现页面跳转逻辑
    }
}

class FirebaseAnalytics: NSObject, AnalyticsService {
    func track(event: String) {
        print("Firebase 事件追踪: \(event)")
    }
}

class DefaultUserModule: NSObject, UserModule {
    func test(event: String) {
        print("用户模块测试: \(event)")
    }
    
    func pushProfile(from: UIViewController, userId: String) {
        print("用户模块内导航: \(userId)")
    }
    
    func track(event: String) {
        print("用户模块内追踪: \(event)")
    }
}


