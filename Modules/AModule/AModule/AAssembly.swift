//
//  AAssembly.swift
//  AModule
//
//  Created by SRS on 2020/6/19.
//  Copyright © 2020 agora. All rights reserved.
//

import Swinject
import CommonModule
import URLNavigator

public class AAssembly: Assembly {
    
    public init() {}
    
    public func assemble(container: Container) {
        container.register(AProvider.self) { resolver in
            AProviderImpl()
        }.inObjectScope(.container)
        
        self.assembleRouter(container: container)
    }

    public func loaded(resolver: Resolver) {
        
        let navigator = resolver.resolve(NavigatorType.self)!
        ARouter.initialize(navigator: navigator)
        
        AProvider.shareInstance = resolver.resolve(AProvider.self)
    }
    
    private func assembleRouter(container: Container) {

        container.register(AViewController.self) { resolver in
            let vc = AViewController()
            return vc
        }.inObjectScope(.container)
    }
}
