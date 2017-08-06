//
//  SecondViewController.swift
//  PssingData2
//
//  Created by MacStudent on 2017-08-04.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lbReceived: UILabel!
    var stringPassed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbReceived.text = stringPassed + " Worked"
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func goBackButton(_ sender: Any) {
        
        let firstVC = self.navigationController!.viewControllers[0] as! ViewController
        
        firstVC.answer = "Back From the second"
        
        
        self.navigationController!.popToViewController(firstVC, animated: true);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
