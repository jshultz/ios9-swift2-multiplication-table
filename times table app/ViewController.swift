//
//  ViewController.swift
//  times table app
//
//  Created by Jason Shultz on 9/24/15.
//  Copyright © 2015 HashRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var cellContent = ["john", "jacob", "jingleheimer", "schmidt"]

    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var multiplyLabel: UILabel!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        print(sliderValue)
        let factor = Int(sliderValue.value) // convert Float to Int to shave off decimal
        multiplyLabel.text = "Multiplying by \(factor)"
        
        var x = 0
        
        while (x <= 20) {
            
//            cellContent = ["john", "jacob", "jingleheimer", "schmidt"]
            x++
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

