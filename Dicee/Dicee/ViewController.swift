//
//  ViewController.swift
//  Dicee
//
//  Created by Piyush Singh on 05/03/2016.
//  Copyright © 2016 Piyush Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 :Int = 0
    var randomDiceIndex2 :Int = 0
    
    var diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(sender: UIButton) {
        updateDiceImages()
    }

    // Shake genture handling.
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            updateDiceImages()
        }
    }
    
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(diceArray.count)
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }

    

}

