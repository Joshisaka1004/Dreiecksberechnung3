//
//  conversionVC.swift
//  Dreiecksberechnung3
//
//  Created by Joachim Vetter on 21.07.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class conversionVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textFeldLabel: UITextField!
    @IBOutlet weak var ergebnisLabel: UILabel!
    var userEingabe: Double? {
        didSet {
            updateLabel()
        }
    }
    
    var hypotenuse: Double? {
        if let temp = userEingabe {
            let res = sqrt(pow(8, 2) + pow(temp, 2))
            return res
        } else {
            return nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFeldLabel.delegate = self
    }
   
    let myNumberForm: NumberFormatter = {
        let myN = NumberFormatter()
        myN.numberStyle = .decimal
        myN.minimumFractionDigits = 0
        myN.maximumFractionDigits = 3
        return myN
    }()
    
    @IBAction func myTextField(_ sender: UITextField) {
        if let myTemp1 = sender.text, let myTemp2 = Double(myTemp1) {
            userEingabe = myTemp2
        }
    }
    func updateLabel() {
        if let userEingaben = hypotenuse {
            ergebnisLabel.text = myNumberForm.string(from: NSNumber(value: userEingaben))
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textFeldLabel.resignFirstResponder()
    }
}
