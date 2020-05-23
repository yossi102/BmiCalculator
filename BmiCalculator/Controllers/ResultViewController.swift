//
//  ResultViewController.swift
//  BmiCalculator
//
//  Created by Yos bz on 12/05/2020.
//  Copyright © 2020 Yos bz. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController {
    
    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue ?? ""
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
}
