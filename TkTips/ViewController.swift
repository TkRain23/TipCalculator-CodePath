//
//  ViewController.swift
//  TkTips
//
//  Created by Tim Kaing on 12/31/15.
//  Copyright © 2015 Daisukiyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.15, 0.20, 0.25]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = Double(billField.text!)
        var tip = billAmount! * tipPercentage
        var total = billAmount! + tip
        
        tip = Double(round(100*tip)/100)
        total = Double(round(100*total)/100)
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

