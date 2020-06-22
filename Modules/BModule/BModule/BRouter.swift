//
//  BRouter.swift
//  BModule
//
//  Created by SRS on 2020/6/22.
//  Copyright © 2020 agora. All rights reserved.
//

import URLNavigator
import CommonModule

struct BRouter {
    
    static var nav: NavigatorType?
    
    static func initialize(navigator: NavigatorType) {
        
        nav = navigator
        
        navigator.register(Module.BModule.BVC) { url, values, context in
          return BViewController()
        }
    }
}
