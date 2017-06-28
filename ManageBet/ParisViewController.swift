//
//  ParisViewController.swift
//  ManageBet
//
//  Created by etudiant on 07/06/2017.
//  Copyright © 2017 etudiant. All rights reserved.
//

import UIKit

class ParisViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var pickSport: UIPickerView!
    
    var listSport: Dictionary<String, Int> = ["Football" : 100, "Tennis":600]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }

}
