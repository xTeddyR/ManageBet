//
//  Pari.swift
//  ManageBet
//
//  Created by etudiant on 07/06/2017.
//  Copyright © 2017 etudiant. All rights reserved.
//

import UIKit

class Pari: NSObject {
    let equipe1 : String
    let equipe2 : String
    let coteEquipe1 : String
    let coteEquipe2 : String
    
    init(equipe1: String, equipe2: String, coteEquipe1: String, coteEquipe2: String) {
        self.equipe1 = equipe1
        self.equipe2 = equipe2
        self.coteEquipe1 = coteEquipe1
        self.coteEquipe2 = coteEquipe2
    }
}
