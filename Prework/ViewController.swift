//
//  ViewController.swift
//  Prework
//
//  Created by Amy Liang on 2022/1/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    

    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var OthercostAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
     
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15 ,0.18, 0.2]
    
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let Othercost = Double(OthercostAmountTextField.text!) ?? 0
        let total = bill + tip + Othercost
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
 
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
}

