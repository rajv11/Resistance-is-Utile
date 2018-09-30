//
//  FirstViewController.swift
//  Utile
//
//  Created by student on 9/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ProblemViewController: UIViewController {
    @IBOutlet weak var band1LBL: UILabel!
    
    @IBOutlet weak var band2LBL: UILabel!
    @IBOutlet weak var band3LBL: UILabel!
    
    @IBOutlet weak var answerTF: UITextField!
    
    @IBAction func checkAnswer(_ sender: Any) {
        if ElectricalEngineer.electricalEngineer.checkAnswer(answer: answerTF!.text!) {
            let  alert  =  UIAlertController(title:  "Hurray",  message:  "Awesome work",  preferredStyle:  .alert)
            alert.addAction(UIAlertAction(title:  "OK",  style:  .default,  handler:  nil))
            self.present(alert,  animated:  true,  completion:  nil)
        } else {
            let  alert  =  UIAlertController(title:  "Incorrect Answer",  message:  "Please try again",  preferredStyle:  .alert)
            alert.addAction(UIAlertAction(title:  "OK",  style:  .default,  handler:  nil))
            self.present(alert,  animated:  true,  completion:  nil)
        }
    }
    
    @IBAction func generate(_ sender: Any) {
        var bands = ElectricalEngineer.electricalEngineer.generateProblem()
        band1LBL.text = bands[0]
        band2LBL.text = bands[1]
        band3LBL.text = bands[2]
        
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

