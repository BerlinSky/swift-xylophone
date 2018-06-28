//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectFileName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        selectFileName = soundArray[sender.tag - 1]
        
//        print(selectFileName)
        
        playSound()
    }
    
    func playSound() {
        
        let soundUrl = Bundle.main.url(forResource: selectFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

