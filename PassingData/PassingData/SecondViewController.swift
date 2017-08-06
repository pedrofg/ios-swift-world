//
//  SecondViewController.swift
//  PassingData
//
//  Created by MacStudent on 2017-08-04.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    var message: String { get set }
    
    func getAnswer(received: Bool);
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lbQuestion: UILabel!
    
    var delegate: SecondViewControllerDelegate?;

    
    @IBAction func btnAnswer_onClick(_ sender: UIButton) {
        
        //send answer back to first controller
        dismiss(animated: false, completion: {
            self.delegate!.getAnswer(received: sender.tag == 1);
        });
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.delegate != nil {
            lbQuestion.text = delegate!.message;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
