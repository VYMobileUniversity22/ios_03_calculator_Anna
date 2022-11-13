//
//  Operations.swift
//  calculadora
//
//  Created by annaF on 13/11/22.
//

import Foundation
var  operationEnum : operationsType = .none

enum operationsType {
    case none, suma,resta, por, div
    
}

class operationClass {
    var firstNumber: Double
    var secondNumber:Double
    var whatOperation: operationsType?
    var total: Double
   
    
    init()  {
        self.firstNumber = 0
        self.secondNumber = 0
        self.total = 0
    }
    
  
    func setFirst(numDouble:Double){
        self.firstNumber = numDouble
        
    }
    func calculate( ) -> String {
        
        switch  self.whatOperation{
        case .none: //
            break
        case .suma:
            self.total = self.secondNumber +  self.firstNumber
            
            break
        case .resta:
            self.total = self.secondNumber -  self.firstNumber
            
            break
        case .div:
            self.total = self.secondNumber /  self.firstNumber
            
            break
        case .por:
            self.total = self.secondNumber *  self.firstNumber
            
            break
            
        default: break
        }
        
        return String(total)
        
    }
    
    
    func setSecond(numDouble:Double){
        self.secondNumber = numDouble
    }
    
}








