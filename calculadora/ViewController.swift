//
//  ViewController.swift
//  calculadora
//
//  Created by annaF on 8/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    //OULETS
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
    @IBOutlet weak var but5: UIButton!
    @IBOutlet weak var but6: UIButton!
    @IBOutlet weak var but7: UIButton!
    @IBOutlet weak var but8: UIButton!
    @IBOutlet weak var but9: UIButton!
    @IBOutlet weak var butmas: UIButton!
    @IBOutlet weak var butmenos: UIButton!
    @IBOutlet weak var butdecimal: UIButton!
    @IBOutlet weak var butpor: UIButton!
    @IBOutlet weak var butigual: UIButton!
    @IBOutlet weak var but0: UIButton!
    @IBOutlet weak var auxLabel: UILabel!
    @IBOutlet weak var warning: UILabel!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var butdiv: UIButton!
    @IBOutlet weak var lastresultlabel: UILabel!
    var  total: Double = 0
    var  firsNumber: Double = 0
    var  secondNumber: Double = 0
    var  screenNumber: String = ""
    var  operation: operations = .none
    var controllerDecimal: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let key = defaults.bool(forKey: "enabled_preference_decimals")
        
            if key == false {
            butdecimal.alpha = 0.0
            
        }
        else {butdecimal.alpha = 1.0}
    }
    enum operations {
        case none, suma,resta, por, div
    }
    @IBAction func buttonClick(_ sender: UIButton) {
    }
    fileprivate func screen() {
        secondNumber = firsNumber
        firsNumber = 0
        screenNumber = ""
        controllerDecimal = false
        warning.text = ""
        
    }
    
    @IBAction func suma(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "+"
        screen()
        operation = operations.suma
    }
    @IBAction func resta(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "-"
        screen()
        operation = operations.resta
    }
    @IBAction func por(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "*"
        screen()
        operation = operations.por
    }
    @IBAction func div(_ sender: Any) {
        auxLabel.text = auxLabel.text! + "/"
        screen()
        operation = operations.div
    }
    @IBAction func igual(_ sender: UIButton) {
        
        switch operation {
        case .none: //
            break
        case operations.suma:
            total = secondNumber +  firsNumber
            label.text = String(total)
                       
            break
        case .resta:
            total = secondNumber -  firsNumber
            label.text = String(total)
            
            break
        case .div:
            total = secondNumber /  firsNumber
            label.text = String(total)
            break
        case .por:
            total = secondNumber *  firsNumber
            label.text = String(total)
            break
        }
   
        auxLabel.text = String(total)
        controllerDecimal = false
        warning.text = ""
        
    }
    @IBAction func decimal(_ sender: UIButton) {
        if(!controllerDecimal)
        {
            screenNumber.append(".")
            auxLabel.text =    auxLabel.text! + "."
            controllerDecimal = true
        }
        else
        {
            warning.text = "No puedes hacer eso"
        }
    }
    @IBAction func clear(_ sender: Any) {
        
        total = 0
        firsNumber = 0
        secondNumber = 0
        screenNumber = "0"
        label.text = screenNumber
        auxLabel.text = ""
        controllerDecimal = false
        warning.text = ""
       
        
    }
    @IBAction func numClicado(_ sender: UIButton) {
        
        let num = String(sender.tag)
        screenNumber = screenNumber + num
        label.text = screenNumber
   
        guard let numDouble = Double(screenNumber) else {
            return
        }
        firsNumber = numDouble
        auxLabel.text =    auxLabel.text! + num
        warning.text = "" 
    }
    
}
