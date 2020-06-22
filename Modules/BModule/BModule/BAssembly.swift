//
//  BAssembly.swift
//  BModule
//
//  Created by SRS on 2020/6/19.
//  Copyright © 2020 agora. All rights reserved.
//

import Swinject
import CommonModule
import URLNavigator

public class BAssembly: Assembly {
    
    public init() {}
    
    public func assemble(container: Container) {
        container.register(BProvider.self) { resolver in
            return BProviderImpl();
        }.inObjectScope(.container)
    }

    public func loaded(resolver: Resolver) {
        
        let navigator = resolver.resolve(NavigatorType.self)!
        BRouter.initialize(navigator: navigator)
        
        BProvider.shareInstance = resolver.resolve(BProvider.self)
    }
}
