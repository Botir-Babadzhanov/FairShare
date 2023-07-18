import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10

    
    @IBAction func tipChanged(_ sender: Any) {
        // Check if the sender is a UIButton
          if let button = sender as? UIButton {
              // Deselect all tip buttons via IBOutlets
              zeroPctButton.isSelected = false
              tenPctButton.isSelected = false
              twentyPctButton.isSelected = false

              // Make the button that triggered the IBAction selected.
              button.isSelected = true

              // Get the current title of the button that was pressed.
              let buttonTitle = button.currentTitle!
              print(buttonTitle)

              // Remove the last character (%) from the title then turn it back into a String.
              let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())

              // Turn the String into a Double.
              let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!

              // Divide the percent expressed out of 100 into a decimal e.g. 10 becomes 0.1
              tip = buttonTitleAsANumber / 100
          }
    }
    
    
    @IBAction func stepperValueChanged(_ sender: Any) {
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        print(tip)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

