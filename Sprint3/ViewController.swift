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
    
    
    
    @IBOutlet weak var istoria: UITextView!
    
    @IBAction func schetchikPlus(_ sender: Any) {
        nachZnachenie += 1
        schetchic.text = "\(nachZnachenie)"
        izmeneniaIstoria("Значение увеличено на 1", textView: istoria)
    }
      
    @IBAction func obnulenie(_ sender: Any) {
        nachZnachenie = 0
        schetchic.text = "\(nachZnachenie)"
        izmeneniaIstoria("Значение изменено на 0", textView: istoria)
    }
    
    
    @IBAction func schetchicMinus(_ sender: Any) {
        if nachZnachenie > 0 {
            nachZnachenie -= 1
            schetchic.text = "\(nachZnachenie)"
            izmeneniaIstoria("Значение уменьшено на 1", textView: istoria)
        } else {
            izmeneniaIstoria("Попытка уменьшить значение счётчика ниже 0", textView: istoria)
        }
    }
    
    func izmeneniaIstoria(_ message:String, textView: UITextView) {
        let data = DateFormatter()
        data.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let vremya = data.string(from: Date())
        
        let vuvodVText = "[\(vremya)]: \(message)\n"
        textView.text.append(vuvodVText)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

