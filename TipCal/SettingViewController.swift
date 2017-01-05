//
//  SettingViewController.swift
//  TipCal
//
//  Created by Mihwa on 2016. 12. 14..
//  Copyright © 2016년 Mihwa. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController
{

    
    @IBOutlet weak var defaultControl: UISegmentedControl!
       
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let defaultTip = defaults.integer(forKey: "default Tip")
        defaultControl.selectedSegmentIndex = defaultTip
        
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    @IBAction func actDefaultControl(_ sender:UISegmentedControl)
    {
        
        let defaults = UserDefaults.standard
        let defaultTip = defaultControl.selectedSegmentIndex

        
        defaults.set(defaultTip, forKey: "default Tip")
        defaults.synchronize()
        
      
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
