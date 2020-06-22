//
//  AProvider.swift
//  CommonModule
//
//  Created by SRS on 2020/6/17.
//  Copyright © 2020 agora. All rights reserved.
//

import Foundation

//public protocol AProviderProtocol {
//    func register();
//}

open class AProvider {

    public static var shareInstance: AProvider?
    
    public init() {}
    
    open func logicA() -> Dictionary<String, Any> {
        fatalError("sub class impl")
    }
}
