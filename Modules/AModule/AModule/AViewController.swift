//
//  AViewController.swift
//  AModule
//
//  Created by SRS on 2020/6/19.
//  Copyright © 2020 agora. All rights reserved.
//

import UIKit
import CommonModule

class AViewController: UIViewController {

    var params: Dictionary<String, Any>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white;
        
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 500, height: 100))
        label.text = "AViewController"
        self.view.addSubview(label)

        print("AViewController params:\(params)")
        
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            CommonRouter.push(urlStr: Module.BModule.BVC)
        }
    }
}
