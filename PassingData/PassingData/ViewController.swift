//
//  ViewController.swift
//  PassingData
//
//  Created by MacStudent on 2017-08-04.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate  {

    @IBOutlet weak var lbAnswer: UILabel!
    @IBOutlet weak var lbTitle: UILabel!
    
    private var _message: String = "";
    
    internal var message: String {
        get {
            return self._message;
        }
        set {
            self._message = newValue;
        }
    }
    
    internal func getAnswer(received: Bool) {
        
        if received {
            lbAnswer.text = "Yes";
        } else {
            lbAnswer.text = "No";
        }
    }
    
    @IBAction func btnSend_onClick(_ sender: UIButton) {
        self.message = lbTitle.text!;
        
        performSegue(withIdentifier: "travel", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secController = segue.destination as! SecondViewController
        secController.delegate = self
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

