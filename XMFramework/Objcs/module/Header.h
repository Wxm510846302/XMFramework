//
//  Header.h
//  XMFramework
//
//  Created by Xueming Wang on 2025/6/22.
//

#ifndef Header_h
#define Header_h


#endif /* Header_h */
#import "XMTestBridgeHeader.h"
/**
Xcode 明确禁止：框架目标不支持创建桥接文件（Xcode 会忽略框架项目中的桥接文件设置）Xcode 会忽略该设置，即使路径正确[$(SRCROOT)/XMFramework/Objcs/module/Header.h]也无效⚠️。
报错内容:❎error: Using bridging headers with framework targets is unsupported (in target 'YourFramework' from project 'YourFramework')❎
编译机制不同：框架需要生成通用二进制（.framework包），而桥接文件是应用级别的临时编译辅助文件
 */
