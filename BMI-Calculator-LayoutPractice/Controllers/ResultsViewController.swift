//
//  ResultsViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Pavel Panyushkin on 09.10.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
    }
    
    

}
