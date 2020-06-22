//
//  CommonRouter.swift
//  CommonModule
//
//  Created by SRS on 2020/6/22.
//  Copyright © 2020 agora. All rights reserved.
//

import URLNavigator
import Swinject

public struct CommonRouter {
    
    static var nav: NavigatorType?
    
    static func initialize(navigator: NavigatorType) {
        nav = navigator
    }

    static public func push(urlStr: String) {
        nav?.push(urlStr)
    }
    static public func push(urlStr: String, context: Any?) {
        nav?.push(urlStr, context: context, from: nil, animated: true)
    }
}
