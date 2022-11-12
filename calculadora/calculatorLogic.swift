//
//  calculatorLogic.swift
//  calculadora
//
//  Created by annaF on 12/11/22.
//
import Foundation

class Calculator {
    
    weak var delegate: CalculatorBusinessLogicDelegate?
    
    var  total: Double = 0 //Valor calculado
    var  numPantallaC1: Double = 0 //numero pantalla formato double
    var  numPantallaC2: Double = 0 //numero pantalla calcular guardar para calcular con el nuevo
    var  numPantallaM: String = ""
    
    func calculateResult(numPantallaC1: Double,
                         numPantallaC2: Double,
                         operand: Operation,
                         result: Double){
        
       
    }
    
    //    weak var delegate: CalculatorBusinessLogicDelegate?
//
//    var numberOnDisplay: Double = 0
//    var previousNumber: Double?
//    var currentNumber: Double?
//    var currentOperand: Operand?
//    var operand = 0
//    var isPerformingOperand = false

//    // TODO: handle inputs here, fire delegate when needed to notify View Controller
//    func provideNumberInput(number: Int) {
//        //...
//    }
//    func provideOperandInput(operand: Operand) {
//        //...
//    }
//    func provideSpecialCharacterInput(operand: SpecialOperands) {
//
//        //...
//        if operand == .clear {
//            delegate?.clearScreen()
//        }
//
//        if operand == .compute, let previousNumber = self.previousNumber, let currentOperand = self.currentOperand, let currentNumber = self.currentNumber {
//            delegate?.onComputationDone(previousNumber: previousNumber, currentNumber: currentNumber, operand: currentOperand, result: /* compute result here */)
//        }
//        //...

   // }

}
