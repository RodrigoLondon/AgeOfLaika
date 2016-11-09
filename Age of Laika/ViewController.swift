//
//  ViewController.swift
//  Age of Laika
//
//  Created by Lewis Jones on 31/07/2015.
//  Copyright © 2015 Rodrigo Pena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!

    @IBOutlet weak var humanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        
        
        let stringFromTextField = humanYearsTextField.text
        let optionalIntFromTextField = Int(stringFromTextField!)//stringFromTextField!.toInt()
        let intFromOptional = optionalIntFromTextField!
        
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text = "\(intFromOptional * 7)” + “ Human Years"
        
        humanYearsTextField.resignFirstResponder()
    }
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        
        let stringFromTextField = humanYearsTextField.text
        let doubleFromTextField = Double((stringFromTextField! as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(realDogYears)" + " Real Human Years"
        humanYearsTextField.resignFirstResponder()
    }
    
    

        
    }
    




