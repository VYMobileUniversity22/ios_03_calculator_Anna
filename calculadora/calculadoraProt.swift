//
//  calculadoraProt.swift
//  calculadora
//
//  Created by annaF on 12/11/22.
//

import Foundation

protocol CalculatorBusinessLogic {
    var delegate: CalculatorBusinessLogicDelegate? {get set}
    
    func whatOperand(operand: operations)
    func whatNumber(number: String)
    func specialOperandInput(operand: specialOperations)
}

protocol CalculatorBusinessLogicDelegate: class {
    
    func calculateResult(numPantallaC1: Double,
                         numPantallaC2: Double,
                           operand: Operation,
                           result: Double)
    func clearScreen()
}
