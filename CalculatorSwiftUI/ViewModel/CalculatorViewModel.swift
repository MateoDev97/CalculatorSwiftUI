//
//  CalculatorViewModel.swift
//  CalculatorSwiftUI
//
//  Created by Brian Ortiz on 2023-05-26.
//

import Foundation


class CalculatorViewModel: ObservableObject {
    
    @Published var labelValue: String = "0"
    
    private var isFinishedTypingNumber: Bool = true
    
    private var intermediateCalculation: (number: Double, calcMethod: String)?
    
    private var displayValue: Double {
        get {
            guard let number = Double(labelValue) else {
                print("Couldn't cast the number to double")
                return 0
            }
            return number
        }
        set {
            
            let formatter = NumberFormatter()
            formatter.minimumFractionDigits = 0
            formatter.maximumFractionDigits = 5
            
            if let formattedString = formatter.string(from: NSNumber(value: newValue)) {
                labelValue = formattedString
            } else {
                print("Formatting error")
                labelValue = String(newValue)
            }
            
        }
    }
    
    func numberPressed(number: String) {
        if isFinishedTypingNumber {
            labelValue = number
            isFinishedTypingNumber = false
        } else {
            if number == "." {
                let containsDot = labelValue.contains(".")
                if containsDot { return }
            }
            
            labelValue = labelValue + number
        }
    }
    
    func calcPressed(symbol: String) {
        isFinishedTypingNumber = true
        
        if symbol == "AC" {
            displayValue = 0
        } else if symbol == "+/-" {
            displayValue *= -1
        } else if symbol == "%" {
            displayValue /= 100
        } else if symbol == "+" || symbol == "-" || symbol == "×" || symbol == "÷" {
            intermediateCalculation = (number: displayValue, calcMethod: symbol)
        } else if symbol == "=" {
            displayValue = performCalculation(number: displayValue) ?? 0
        }
    }
    
    
    private func performCalculation(number: Double) -> Double? {
        if let intermediateCalculation = self.intermediateCalculation {
            
            switch intermediateCalculation.calcMethod {
            case "+":
                return intermediateCalculation.number + number
            case "-":
                return intermediateCalculation.number - number
            case "×":
                return intermediateCalculation.number * number
            case "÷":
                return intermediateCalculation.number / number
            default:
                return nil
            }
            
        }
        
        return nil
    }
    
    
}

