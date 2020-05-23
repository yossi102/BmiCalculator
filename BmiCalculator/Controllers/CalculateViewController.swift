//
//  ViewController.swift
//  BmiCalculator
//
//  Created by Yos bz on 11/05/2020.
//  Copyright © 2020 Yos bz. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmivalue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func heightSliderMoved(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = (weight/(pow(height, 2)))
        bmivalue =  String(format: "%.2f", bmi)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // to chack to where to go
        if segue.identifier == "goToResult" {
            // down to
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmivalue
        }
    }
    
}

