import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbSliderValue: UILabel!
    @IBOutlet weak var lbToggle: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let currentValue = lroundf(sender.value);
        
        lbSliderValue.text = "\(currentValue)";
    }
    
    
    @IBAction func toggle(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
           lbToggle.text = "Private: ";
        } else {
            lbToggle.text = "Public: ";
        }
        
        
    }
    
}

