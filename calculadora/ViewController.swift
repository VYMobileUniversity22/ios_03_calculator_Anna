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
    var  screenNumber: String = ""
    var  operation: operations = .none
    var controllerDecimal: Bool = false
    var operationC = operationClass()
    
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
    @IBAction func numClicado(_ sender: UIButton) {
        let num = String(sender.tag)
        screenNumber = screenNumber + num
        label.text = screenNumber
        
        guard let numDouble = Double(screenNumber) else {
            return
        }
        operationC.setFirst(numDouble: numDouble)
        auxLabel.text =    auxLabel.text! + num
        warning.text = ""
        
    }
    
    fileprivate func screen() {
        operationC.setSecond(numDouble: operationC.firstNumber)
        operationC.setFirst(numDouble: 0.0)
        screenNumber = ""
        controllerDecimal = false
        warning.text = ""
        
    }
    
    @IBAction func suma(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "+"
        screen()
        operationC.whatOperation = .suma
        
    }
    @IBAction func resta(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "-"
        screen()
        operationC.whatOperation = .resta
        
    }
    @IBAction func por(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "*"
        screen()
        operationC.whatOperation = .por
    }
    @IBAction func div(_ sender: Any) {
        auxLabel.text = auxLabel.text! + "/"
        screen()
        operationC.whatOperation = .div
    }
    @IBAction func igual(_ sender: UIButton) {
        operationC.calculate()
        label.text = String(operationC.total)
        auxLabel.text = String(operationC.total)
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
        
        operationC.total = 0
        operationC.total = 0
        operationC.total = 0
        screenNumber = "0"
        label.text = screenNumber
        auxLabel.text = ""
        controllerDecimal = false
        warning.text = ""
        
        
    }
}
