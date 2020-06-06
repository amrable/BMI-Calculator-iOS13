//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Amr Fahmy on 6/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculate(weight: Float , height: Float) {
        let currBmiValue = weight / (height * height)
        if currBmiValue < 18.5 {
            bmi = BMI(value: currBmiValue , advice : "Eat some more snacks", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) )
        }else if currBmiValue < 25 {
            bmi = BMI(value: currBmiValue , advice : "Fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) )
        }else{
            bmi = BMI(value: currBmiValue , advice : "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1) )
        }
    }
    
    func getBmiValue() -> String{
        let decimalBmi = String(format: "%.1f" , bmi?.value ?? 0.0)
        return decimalBmi
    }
    
    func getAdvice() -> String{
        let advice =  bmi?.advice ?? "No advice"
        return advice
    }
    
    
    func getColor() -> UIColor{
        let color =  bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return color
    }
    
    
}
