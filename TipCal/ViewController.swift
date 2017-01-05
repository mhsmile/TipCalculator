//
//  ViewController.swift
//  TipCal
//
//  Created by Mihwa on 2016. 12. 13..
//  Copyright © 2016년 Mihwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

  
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var onePerson: UILabel!
    @IBOutlet weak var twoPeople: UILabel!
    @IBOutlet weak var threePeople: UILabel!
    @IBOutlet weak var fourPeople: UILabel!
    @IBOutlet weak var fivePeople: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any)
    {
 
        view.endEditing(true)
    }

    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let defaultTip = defaults.integer(forKey: "default Tip")
        tipControl.selectedSegmentIndex = defaultTip
       
    
    }

       @IBAction func calTip(_ sender: Any)
    {
        
        let tipPercentages = [0.10, 0.15, 0.18, 0.20]
        let bill = Double(billField.text!) ?? 0
        
        let tip  = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
        onePerson.text = String(format: "$%.2f", total)
        twoPeople.text = String(format: "$%.2f", total/2)
        threePeople.text = String(format: "$%.2f", total/3)
        fourPeople.text = String(format: "$%.2f", total/4)
        fivePeople.text = String(format: "$%.2f", total/5)
        
    }
    
    

}

