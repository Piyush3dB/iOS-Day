//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
    var soundArray : [String] = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    //var selectedSoundFileName : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let topSwipe  = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        let downSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        topSwipe.direction  = .Up
        downSwipe.direction = .Down
        
        view.addGestureRecognizer(topSwipe)
        view.addGestureRecognizer(downSwipe)
        
    }



    @IBAction func notePressed(sender: UIButton) {
        let selectedSoundFileName = soundArray[sender.tag-1]
        print (selectedSoundFileName)
        playSound(selectedSoundFileName)
    }
    
    func playSound(selectedSoundFileName: String) {
        let soundURL = NSBundle.mainBundle().URLForResource(selectedSoundFileName, withExtension: "wav")!
        //let soundURL = NSBundle.mainBundle().URLForResource("note1.wav")!
        
        audioPlayer = try! AVAudioPlayer(contentsOfURL: soundURL)
        
        audioPlayer.play()
        
        
    }
    
    

    

    func handleSwipes(sender:UISwipeGestureRecognizer) {
        
        var selectedSoundFileName: String = ""
        

        
        if (sender.direction == .Up) {
            print("Swipe Up")

            
            for tag in 1...7 {
                
                selectedSoundFileName = soundArray[tag-1]
                print (selectedSoundFileName)
                playSound(selectedSoundFileName)
                sleep(1)
            }
        }
        
        if (sender.direction == .Down) {
            print("Swipe Down")
            
            for tag in (1...7).reverse() {
            
                selectedSoundFileName = soundArray[tag-1]
                print (selectedSoundFileName)
                playSound(selectedSoundFileName)
                sleep(1)
            }
        }
    }
    
    
  

}

