//
//  ViewController.swift
//  GPU Device Info
//
//  Created by Piyush Singh on 06/03/2016.
//  Copyright © 2016 Piyush Singh. All rights reserved.
//

import UIKit
import Metal

class ViewController: UIViewController {

    
    @IBOutlet weak var infoLabel: UILabel!
    
    var device: MTLDevice!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        device = MTLCreateSystemDefaultDevice()
        
        
        //infoLabel.text = "maxThreadsPerThreadgroup:  \(device.maxThreadsPerThreadgroup) \n "
        
        infoLabel.text = "GPU:  \(device.name!) \n \n maxThreadsPerThreadgroup:  \n \(device.maxThreadsPerThreadgroup) \n "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


