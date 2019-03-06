//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mark Puchala II on 3/5/19.
//  Copyright © 2019 Mark Puchala II. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        shakeBall()
    }

    @IBOutlet weak var ball: UIImageView!

    func shakeBall() {
        randomBallNumber = Int.random(in: 0 ... 4)
        ball.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    @IBAction func askMe(_ sender: Any) {
        shakeBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeBall()
    }
    
}

