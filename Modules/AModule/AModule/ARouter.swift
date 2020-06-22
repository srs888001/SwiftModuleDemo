//
//  ARouter.swift
//  AModule
//
//  Created by SRS on 2020/6/22.
//  Copyright © 2020 agora. All rights reserved.
//

import URLNavigator
import CommonModule

struct ARouter {
    
    static var nav: NavigatorType?
    
    static func initialize(navigator: NavigatorType) {
        nav = navigator
        
        navigator.register(Module.AModule.AVC) { url, values, context in
            
            let vc = AViewController()
            vc.params = context as? Dictionary<String, Any>
            return vc
        }
    }
}

