//
//  XMSwiftSDK.swift
//  XMFramework
//
//  Created by Xueming Wang on 2025/6/20.
//

import UIKit

@objc public class XMSwiftSDK: NSObject {
    public override init() {
        super.init()
    }
}
class XMCtr:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.global().async {
            // ❌ 错误：在后台线程启动动画会导致崩溃或未定义行为
            UIView.animate(withDuration: 0.3) {
                self.view.alpha = 0.5
            }
        }
    }
}
