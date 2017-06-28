//
//  ResultViewController.swift
//  ManageBet
//
//  Created by etudiant on 07/06/2017.
//  Copyright © 2017 etudiant. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var miseTextField: UITextField!
    @IBOutlet weak var equipe1Label: UILabel!
    @IBOutlet weak var equipe2Label: UILabel!
    @IBOutlet weak var victoireEquipe1Label: UILabel!
    @IBOutlet weak var matchNulLabel: UILabel!
    @IBOutlet weak var victoireEquipe2Label: UILabel!
    @IBOutlet weak var sauvegardeButton: UIButton!
    
    var textMise: String=""
    var pari = Pari(equipe1: "FC Barcelone", equipe2: "Real Madrid", coteEquipe1: "1", coteEquipe2: "3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        equipe1Label.text = pari.equipe1
        equipe2Label.text = pari.equipe2
        equipe1Label.text = pari.coteEquipe1
        equipe2Label.text = pari.coteEquipe2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Sauvegarde(_ sender: Any) {
        if (!(miseTextField.text?.isEmpty)!) {
            sauvegardeButton.isEnabled = true
            
            textMise = miseTextField.text!

        }else {
            sauvegardeButton.isEnabled = false
        }
    }

}
