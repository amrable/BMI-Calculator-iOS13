//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Amr Fahmy on 6/5/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        background.backgroundColor = color
    }
    @IBAction func recalculatePRessed(_ sender: UIButton) {
        self.dismiss(animated: true , completion:nil)
    }
}
