//
//  BProvider.swift
//  CommonModule
//
//  Created by SRS on 2020/6/19.
//  Copyright © 2020 agora. All rights reserved.
//

open class BProvider {

    public static var shareInstance: BProvider?
    
    public init() {}
    
    open func logicB() -> Dictionary<String, Any> {
        fatalError("sub class impl")
    }
}
