//
//  ViewController.swift
//  BH-example
//
//  Created by Piyush Singh on 13/03/2016.
//  Copyright © 2016 Piyush Singh. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let wrapperItem = TestCppClassWrapper(title: "Init test text for cpp item wrapper class")
        print("Title: \(wrapperItem.getTitle())")
        wrapperItem.setTitle("Just yet another test text setted after cpp item wrapper class init")
        print("Title: \(wrapperItem.getTitle())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

