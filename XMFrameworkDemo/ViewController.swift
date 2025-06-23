//
//  ViewController.swift
//  XMFrameworkDemo
//
//  Created by Xueming Wang on 2025/6/23.
//

import UIKit
import XMFramework
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sdk = XMFrameworkSDK.shared
        let router = ServiceCenter.resolve(ProfileRouting.self)
        (router as AnyObject).pushProfile(from: self, userId: "123")
        let router1 = ServiceCenter.resolve(AnalyticsService.self)
        (router1 as AnyObject).track(event: "456")
        let router2 = ServiceCenter.resolve(UserModule.self)
        (router2 as AnyObject).test(event: "789")
    }


}

