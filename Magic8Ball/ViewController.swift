//
//  ViewController.swift
//  Magic8Ball
//
//  Created by matan elimelech on 16/08/2018.
//  Copyright © 2018 Moveo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallIndex: Int = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ballView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButton(_ sender: Any) {
        changeBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        changeBallImage()
    }
    
    func changeBallImage() {
        
        randomBallIndex = Int(arc4random_uniform(UInt32(ballArray.count)))
        ballView.image = UIImage(named: ballArray[randomBallIndex])
    }

}

