//
//  ViewController.swift
//  Dev8Ball
//
//  Created by Chris Woodard on 2/13/16.
//  Copyright © 2016 CW. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet var answer:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        answer?.text = "Shake to find the answer"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == UIEventSubtype.MotionShake {
            answer?.text = "Thinking.."
        }
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == UIEventSubtype.MotionShake {
            answer?.text = pickRandomAnswer()
        }
    }
}
