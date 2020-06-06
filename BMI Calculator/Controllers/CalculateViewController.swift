//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightValue: UISlider!
    @IBOutlet weak var weightValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        let roundedValue = NSString(format: "%.2f", sender.value)
        print(roundedValue)
        heightLabel.text = roundedValue as String
        heightLabel.text! += "m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        print( Int( round(sender.value) ))
        weightLabel.text = String(Int( round(sender.value)) )
        weightLabel.text! += "Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculate(weight: weightValue.value, height: heightValue.value)
        self.performSegue(withIdentifier: "goToResult" , sender: self)
    }
    
    override func prepare( for segue: UIStoryboardSegue , sender: Any? ){
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

