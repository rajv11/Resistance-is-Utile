//
//  SecondViewController.swift
//  Utile
//
//  Created by student on 9/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class StatisticsViewController: UIViewController {
    @IBOutlet weak var attemptsLBL: UILabel!
    @IBOutlet weak var correctPercentLBL: UILabel!
    @IBOutlet weak var correctLBL: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        attemptsLBL.text = "\(ElectricalEngineer.electricalEngineer.numAttempts)"
        correctLBL.text = "\(ElectricalEngineer.electricalEngineer.numCorrect)"
        correctPercentLBL.text = "\(ElectricalEngineer.electricalEngineer.percentageCorrect)"
    }
    @IBAction func resetStatistics(_ sender: Any) {
        attemptsLBL.text = "0"
        correctLBL.text = "0"
        correctPercentLBL.text = "0.0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

