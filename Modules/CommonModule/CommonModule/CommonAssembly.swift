//
//  CommonAssembly.swift
//  CommonModule
//
//  Created by SRS on 2020/6/17.
//  Copyright © 2020 agora. All rights reserved.
//

import Foundation
import Swinject
import URLNavigator

public class CommonAssembly: Assembly {

    public init() {}
    
    public func assemble(container: Container) {
        container.register(NavigatorType.self) {
            _ in Navigator()
        }.inObjectScope(.container)
    }

    public func loaded(resolver: Resolver) {
        let navigator = resolver.resolve(NavigatorType.self)!
        CommonRouter.initialize(navigator: navigator)
    }
}
