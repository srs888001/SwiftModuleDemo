//
//  BProviderImpl.swift
//  BModule
//
//  Created by SRS on 2020/6/19.
//  Copyright © 2020 agora. All rights reserved.
//

import CommonModule

class BProviderImpl: BProvider {
    
    override func logicB() -> Dictionary<String, Any> {
        return ["BProviderLmpl": "logicB"];
    }
}
