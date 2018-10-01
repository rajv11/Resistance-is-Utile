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
    func display(title:String, msg:String) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func checkAnswer(_ sender: Any) {
        if ElectricalEngineer.electricalEngineer.checkAnswer(answer: answerTF!.text!) {
            display(title: "Hurray", msg: "Awesome work")
            
        } else {
            display(title: "Incorrect Answer", msg: "Please try again")
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

