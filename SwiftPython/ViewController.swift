//
//  ViewController.swift
//  SwiftPython
//
//  Created by Rohit Saini on 31/01/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import UIKit
import PythonKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

       // import sys
        let sysModule = try! Python.import("sys")

        // print("Python Path: {}".format(sys.path[0]))
        print("Python Path: \(sysModule.get(member: "path")[0])")

        // print("Python Version: {}".format(sys.version))
        print("Python Version: \(sysModule.get(member: "version"))")
        // Do any additional setup after loading the view.
    }


}

