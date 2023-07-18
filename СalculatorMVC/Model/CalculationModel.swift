//
//  CalculationModel.swift
//  СalculatorMVC
//
//  Created by Максим Нурутдинов on 18.07.2023.
//

import Foundation

class CalculationModel {
    private var firstNumber = 0.0
    private var secondNumber = 0.0
    private var currentNumber = ""
    private var currentOperation = Operations.noAction
    
    public func setNumber(number: Int) {
        currentNumber.append(String(number))
    }
    
    public func getCurrentNumber() -> String {
        currentNumber
    }
    
    public func setOperation(operation: Operations) {
        guard let number = Double(currentNumber) else { return }
        firstNumber = number
        currentNumber = ""
        currentOperation = operation
    }
    
    public func getResult() -> String {
        
        guard let number = Double(currentNumber) else { return "" }
        secondNumber = number
        
        switch currentOperation {
        case .noAction:
            print("noaction")
            return ""
        case .addition:
            return String(firstNumber + secondNumber)
        case .substraction:
            return String(firstNumber - secondNumber)
        case .multyplication:
            return String(firstNumber * secondNumber)
        case .division:
            return String(firstNumber / secondNumber)
        }
    }
    
    public func resetValues() {
        firstNumber = 0.0
        secondNumber = 0.0
        currentNumber = ""
        currentOperation = .noAction
    }
}
