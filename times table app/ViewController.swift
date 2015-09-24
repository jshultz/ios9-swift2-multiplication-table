//
//  ViewController.swift
//  times table app
//
//  Created by Jason Shultz on 9/24/15.
//  Copyright © 2015 HashRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var sliderValue: UISlider!
    
    
    @IBAction func sliderMoved(sender: AnyObject) {
        print(sliderValue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

