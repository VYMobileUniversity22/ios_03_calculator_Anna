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
    var  total: Double = 0 //Valor calculado
    var  numPantallaC1: Double = 0 //numero pantalla formato double
    var  numPantallaC2: Double = 0 //numero pantalla calcular guardar para calcular con el nuevo
    var  numPantallaM: String = "" // numero pantalla mostrar EN FORMATO STRING
    var  operation: operations = .none
    var controllerDecimal: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    enum operations {
        case none, suma,resta, por, div
    }
    @IBAction func buttonClick(_ sender: UIButton) {
    }
    fileprivate func screen() {
        numPantallaC2 = numPantallaC1
        numPantallaC1 = 0
        numPantallaM = ""
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
            total = numPantallaC2 +  numPantallaC1
            label.text = String(total)
           
            break
        case .resta:
            total = numPantallaC2 -  numPantallaC1
            label.text = String(total)
            
            break
        case .div:
            total = numPantallaC2 /  numPantallaC1
            label.text = String(total)
            break
        case .por:
            total = numPantallaC2 *  numPantallaC1
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
            var decimal = numPantallaM.append(".")
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
        numPantallaC1 = 0
        numPantallaC2 = 0
        numPantallaM = "0"
        label.text = numPantallaM
        auxLabel.text = ""
        controllerDecimal = false
        warning.text = ""
        
    }
    @IBAction func numClicado(_ sender: UIButton) {
        
        var num = String(sender.tag)
        numPantallaM = numPantallaM + num
        label.text = numPantallaM
        guard let numDouble = Double(numPantallaM) else {
            return
        }
        numPantallaC1 = numDouble
        auxLabel.text =    auxLabel.text! + num
        warning.text = "" 
    }
    
}
