//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Piyush Singh on 05/03/2016.
//  Copyright © 2016 Piyush Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray : [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var RndNum :Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(sender: AnyObject) {
        newBallImage()
    }
    
    // Shake genture handling.
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            newBallImage()
        }
    }
    
    func newBallImage() {
        RndNum = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[RndNum])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

