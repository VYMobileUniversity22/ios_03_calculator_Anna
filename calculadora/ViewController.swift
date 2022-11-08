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
    
    @IBOutlet weak var clear: UIButton!
    var  total: Double = 0//Valor calculado
    var  numPantallaC1: Double? = 0 //numero pantalla formato double,
    var  numPantallaC2: Double? = 0 //numero pantalla calcular guardar para calcular con el nuevo
    var  numPantallaM: String = "" // numero pantalla mostrar EN FORMATO STRING
    var  operation: String?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
               
    }
        
    @IBAction func buttonClick(_ sender: UIButton) {
    }
       
    @IBAction func suma(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "+"
        numPantallaC2 = numPantallaC1
        numPantallaC1 = 0
        numPantallaM = ""
        operation = "suma"
        
    }
    
    @IBAction func resta(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "-"
        numPantallaC2 = numPantallaC1
        numPantallaC1 = 0
        numPantallaM = ""
        operation = "resta"    }
    
    @IBAction func por(_ sender: UIButton) {
        auxLabel.text = auxLabel.text! + "*"
        numPantallaC2 = numPantallaC1
        numPantallaC1 = 0
        numPantallaM = ""
        operation = "por"    }
    
    @IBAction func igual(_ sender: UIButton) {
        if( operation == "suma"){
            total = numPantallaC2! +  numPantallaC1!
            label.text = String(total)
            numPantallaC1 = total
            numPantallaC2 = 0
            
        }
        else if ( operation == "por"){
            total = numPantallaC2! *  numPantallaC1!
            label.text = String(total)
        }
        else if ( operation == "resta"){
            total = numPantallaC2! -  numPantallaC1!
            label.text = String(total)
        }
        
        auxLabel.text = String(total)

    }
        
    @IBAction func decimal(_ sender: UIButton) {
        
        var decimal = numPantallaM.append(".")
    }
    
    @IBAction func clear(_ sender: Any) {
   
        total = 0
        numPantallaC1 = 0
        numPantallaC2 = 0
        print(" este es mi c1 \(numPantallaC1)")
        print(" este es mi c2 \(numPantallaC2)")
        numPantallaM = "0"
        label.text = numPantallaM
        auxLabel.text = ""
    }
    
    //Numeros
    
    @IBAction func numClicado(_ sender: UIButton) {
        
        var num = String(sender.tag)
        numPantallaM = numPantallaM + num
        print(num)
        print(numPantallaM)
        label.text = numPantallaM
        numPantallaC1 = Double(numPantallaM)
        print("eey")
        auxLabel.text =    auxLabel.text! + numPantallaM    }
    
    
    
}
