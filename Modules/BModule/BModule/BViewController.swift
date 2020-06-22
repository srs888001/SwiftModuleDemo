//
//  BViewController.swift
//  BModule
//
//  Created by SRS on 2020/6/19.
//  Copyright © 2020 agora. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white;
        
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 500, height: 100))
        label.text = "BViewController"
        self.view.addSubview(label)
    }
}
