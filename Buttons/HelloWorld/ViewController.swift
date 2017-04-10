import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var text: UILabel!
  
    
    @IBAction func btnAction(_ sender: UIButton) {
        
        let title = sender.currentTitle!
        
        text.text = "You clicked the \(title) button"
    }
}

	
