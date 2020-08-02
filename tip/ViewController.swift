//
//  ViewController.swift
//  tip
//
//  Created by Tim Marder on 7/30/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var cashbackField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var twoPeopleLabel: UILabel!
    @IBOutlet weak var fourPeopleLabel: UILabel!
    @IBOutlet weak var threePeopleLabel: UILabel!
    @IBOutlet weak var cashbackLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        // print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let twoPeople = total / 2
        let threePeople = total / 3
        let fourPeople = total / 4
        
        let cashbackPercent = Double(cashbackField.text!) ?? 0
        let cashback = total * (cashbackPercent * 0.01)
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        twoPeopleLabel.text = String(format: "$%.2f each", twoPeople)
        threePeopleLabel.text = String(format: "$%.2f each", threePeople)
        fourPeopleLabel.text = String(format: "$%.2f each", fourPeople)
        cashbackLabel.text = String(format: "$%.2f", cashback)
        
    }
}

