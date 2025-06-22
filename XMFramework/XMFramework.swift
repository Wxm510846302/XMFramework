//
//  XMFramework.swift
//  XMFramework
//
//  Created by Xueming Wang on 2025/6/19.
//

import Foundation
import XMFrameworkPrivate
@objc(XMFramework)

@objcMembers public class XMFramework: NSObject {
    public override init() {
        super.init()
        //        XMSDK.init()
        XMSDKPrivate.init()
        XMOCSDKPrivate.init()
//        XMTestBridgeHeader.init()
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
