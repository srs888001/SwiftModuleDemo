//
//  AProviderImpl.swift
//  AModule
//
//  Created by SRS on 2020/6/17.
//  Copyright © 2020 agora. All rights reserved.
//

import CommonModule

class AProviderImpl: AProvider {
    
    override func logicA() -> Dictionary<String, Any> {
        return ["AProviderLmpl": "logicA"];
    }
}
