//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Pranoy on 13/12/17.
//  Copyright © 2017 Pranoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallIndex : Int = 0
    let ballarray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onButtonPress(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage() {
        randomBallIndex = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named:ballarray[randomBallIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage() // Motion Sensor event triggers
    }
    
}

