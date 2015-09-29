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
    
    
    @IBOutlet weak var table: UITableView!
    
    var cellContent = [0]

    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var multiplyLabel: UILabel!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        print(sliderValue)
        
        cellContent = [0]
        
        let factor = Int(sliderValue.value) // convert Float to Int to shave off decimal
        multiplyLabel.text = "Multiplying by \(factor)"
        
        var x = 1
        
        while (x <= 20) {
            
            cellContent.append(factor * x)
            x++
        }
        
        table.reloadData()
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let factor = Int(sliderValue.value) // convert Float to Int to shave off decimal
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let rowText = "\(indexPath.row) times \(factor) equals \(String(cellContent[indexPath.row]))"
        cell.textLabel?.text = rowText
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

