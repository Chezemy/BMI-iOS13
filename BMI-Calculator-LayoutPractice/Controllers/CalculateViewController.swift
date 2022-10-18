//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightView: UILabel!
    @IBOutlet weak var weightView: UILabel!
    
    var height: Float = 1.5
    var weight: Float = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height = sender.value
        heightView.text = String(format: "%.2fm", height)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight = sender.value
        weightView.text = String(format: "%.0fKg", weight)
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let bmi = weight / (height * height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = "0.0"
        }
    }
    


}

