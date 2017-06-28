//
//  ParisRetriever.swift
//  ManageBet
//
//  Created by etudiant on 07/06/2017.
//  Copyright © 2017 etudiant. All rights reserved.
//

import UIKit

typealias RetrieveParisBlock = (Array<AnyObject>?, Error?) -> Void

class ParisRetriever: NSObject {
    
    static let URL_Search: String = "https://www.parionssport.fr/api/meilleurs-paris/20170606"

    func getParis(block: @escaping RetrieveParisBlock, sport: Int){
        let parisUrl = URL(string: ParisRetriever.URL_Search + "/" + String(sport))
        let task:URLSessionDataTask = URLSession.shared.dataTask(with: parisUrl!, completionHandler: {(data: Data?, response: URLResponse?, error: Error?) in
            if error != nil {
                print(error ?? "Error")
            } else if data != nil {
                do {
                    let parisList: Array<AnyObject> = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! Array<AnyObject>
                    block(parisList, nil)
                } catch let errorEx {
                    block(nil, errorEx)
                }
            }
        })
        task.resume()
    }
}
