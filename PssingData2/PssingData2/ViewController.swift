//
//  ViewController.swift
//  PssingData2
//
//  Created by MacStudent on 2017-08-04.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbText: UILabel!
    var answer = ""
    
    @IBAction func goButton(_ sender: Any) {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondVC.stringPassed = lbText.text!
        
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if answer != "" {
            lbText.text = answer
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

