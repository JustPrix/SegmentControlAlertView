//
//  ViewController.swift
//  SegmentControlAlertVView
//
//  Created by COE-01 on 23/08/19.
//  Copyright © 2019 COE-01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var txtFieldA: UITextField!
    @IBOutlet weak var txtFieldB: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sgtControlAction(_ sender: UISegmentedControl) {
        
        let a = ((Int)(txtFieldA.text!))!
        let b = ((Int)(txtFieldB.text!))!
        var c = 0
        
        switch sender.selectedSegmentIndex {
        case 0:
            c = a + b
        case 1:
            c = a - b
        case 2:
            c = a * b
        case 3:
            c = a / b
        default:
            print("Nothing is selected")
        }
        
        let alertAnswer = UIAlertController(title: "Answer", message: "A = \(a) B = \(b) Result = \(c)", preferredStyle: .alert)
        self.present(alertAnswer, animated: true, completion: nil)
        
        
    }
    
    
    
    
}

