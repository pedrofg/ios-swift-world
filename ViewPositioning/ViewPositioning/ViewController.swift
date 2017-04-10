import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!

    @IBAction func btnPressed(_ sender: UIButton) {
        self.email.resignFirstResponder();
        self.password.resignFirstResponder();
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true);
    }
}

