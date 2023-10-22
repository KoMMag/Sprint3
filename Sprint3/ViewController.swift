//
//  ViewController.swift
//  Sprint3
//
//  Created by Muhamed Kostoev on 21.10.2023.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var schetchic: UILabel!
    var nachZnachenie = 0
    
    
    
    @IBAction func knopkaScetchika(_ sender: Any) {
        nachZnachenie += 1
        schetchic.text = "\(nachZnachenie)"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

