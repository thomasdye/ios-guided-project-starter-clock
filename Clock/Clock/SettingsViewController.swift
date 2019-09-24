//
//  SettingsViewController.swift
//  Clock
//
//  Created by Casualty on 9/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

var selectedColorTheme: UIColor = .red

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    
    @IBAction func colorSegmentedControl(sender: UISegmentedControl) {
        
        
            UserDefaults.standard.set(sender.selectedSegmentIndex, forKey: "selectedColorTheme")
        
        if sender.selectedSegmentIndex == 0 {
            selectedColorTheme = .red
        } else if sender.selectedSegmentIndex == 1 {
            selectedColorTheme = .green
        } else if sender.selectedSegmentIndex == 2 {
            selectedColorTheme = .blue
        } else {
            selectedColorTheme = .purple
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let value = UserDefaults.standard.value(forKey: "selectedColorTheme"){
            let selectedIndex = value as! Int
            segmentedControl.selectedSegmentIndex = selectedIndex
        }

        // Do any additional setup after loading the view.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
