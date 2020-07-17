//
//  ViewController.swift
//  FinalGradeCalc
//
//  Created by Oreoluwa Omomofe on 7/17/20.
//  Copyright © 2020 One Summer Chicago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var finalWorthTextField: UITextField!
    @IBOutlet weak var gradeNeededUILabel: UILabel!
    
    @IBAction func gradeNeededBtn(_ sender: Any) {
        let currentGrade = Double(currentGradeTextField.text!)
        let desiredGrade = Double(desiredGradeTextField.text!)
        let finalWorthPercentage = Double(finalWorthTextField.text!)
        
        let oneHundred = 100.0
        
        let percentOfGrade = Double(oneHundred - finalWorthPercentage!)/100.0
        
        let gradeNeededOnFinal = (desiredGrade! - (percentOfGrade * currentGrade!))/finalWorthPercentage!
        
        gradeNeededUILabel.text = "You need a \(gradeNeededOnFinal * 100)%"
        
    }
    
    
}

