//
//  ViewController.swift
//  SwiftModuleDemo
//
//  Created by SRS on 2020/6/16.
//  Copyright © 2020 agora. All rights reserved.
//

import UIKit
import Swinject
import CommonModule
import AModule
import BModule

class ViewController: UIViewController {
    
    private let assembler = Assembler()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 500, height: 100))
        label.text = "ViewController"
        self.view.addSubview(label)
        
        assembler.apply(assembly: CommonAssembly())
        assembler.apply(assembly: AAssembly())
        assembler.apply(assembly: BAssembly())
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            let dic = AProvider.shareInstance?.logicA()
            CommonRouter.push(urlStr: Module.AModule.AVC, context: dic)
        }
    }
}

