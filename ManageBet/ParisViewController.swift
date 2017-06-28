//
//  ParisViewController.swift
//  ManageBet
//
//  Created by etudiant on 07/06/2017.
//  Copyright © 2017 etudiant. All rights reserved.
//

import UIKit

class ParisViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }


    @IBOutlet weak var pickSport: UIPickerView!
    @IBOutlet weak var matchTableView: UITableView!
    
    var listSport: Array<String> = ["Football", "Tennis"]
    var listSportForAPI: Dictionary<String, Int> = ["Football" : 100, "Tennis":600]
    
    let parisRetriever: ParisRetriever = ParisRetriever()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickSport.dataSource = self
        pickSport.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func getParis(sport: Int){
        parisRetriever.getParis(block: { (parisList, error) in
            if parisList != nil {
                parisList?.forEach({(item: AnyObject) in
                    let id: String = item["sportId"]! as! String
                    NSLog("%s", id)
                })
                DispatchQueue.main.async(execute: {
                    self.matchTableView.reloadData()
                })
            }
        }, sport: sport)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listSport.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listSport[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        getParis(sport: listSportForAPI[listSport[row]]!)
    }
}
