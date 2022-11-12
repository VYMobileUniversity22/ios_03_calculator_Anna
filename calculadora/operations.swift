//
//  operations.swift
//  calculadora
//
//  Created by annaF on 12/11/22.
//

import Foundation


class operations {
    var operation: operationType
    
    
    init(operation: operationType) {
        self.operation = operation
    }
}

enum operationType {
    case suma
    case por
    case div
    case resta
}


class specialOperations {
    
    var specialOperation: specialOperationType
    
    init(specialOperation: specialOperationType) {
        self.specialOperation = specialOperation
    }
    
    
}
enum specialOperationType {
    case igual
    case decimal
    case ac
    
}
