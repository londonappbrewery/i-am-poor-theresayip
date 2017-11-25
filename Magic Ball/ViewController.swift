//
//  ViewController.swift
//  Magic Ball
//
//  Created by Theresa Yip on 24/11/2017.
//  Copyright © 2017 Theresa Yip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomBallNumber = Int (arc4random_uniform(4))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func askButtonPressed(_ sender: Any) {newBallImage()
        
    }
    
    func newBallImage() {
        randomBallNumber = Int (arc4random_uniform(4))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

