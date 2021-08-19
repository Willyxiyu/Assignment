import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentController: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    
    
    @IBOutlet weak var segmented: UISegmentedControl! {
        didSet {
            segmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.white], for: .selected)
            segmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)], for: .normal)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func loginSignupButton(_ sender: UIButton) {
        
        if accountTextField.text == "" && passwordTextField.text == "" && checkTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Signup fail" , preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if accountTextField.text == "" && passwordTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Login fail" , preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if accountTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Account should not be empty" , preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if passwordTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Password should not be empty" , preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if checkTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Check Password should not be empty" , preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if accountTextField.text == "appworks_school@gmail.com" && passwordTextField.text == "1234" {
            let alert = UIAlertController(title: "Correct", message: "Login Successful" , preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
        else {
            let alert = UIAlertController(title:  "Error", message: "try again" , preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkTextField.isEnabled = false
            checkLabel.textColor = UIColor.gray
            checkTextField.backgroundColor = UIColor.gray
            
        } else {
            checkTextField.isEnabled = true
            checkLabel.textColor = UIColor.black
            checkTextField.backgroundColor = UIColor.white
            }
        }
        
        }

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == accountTextField {
            return passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            return checkTextField.becomeFirstResponder()
        } else {
            return textField.resignFirstResponder()
        }
    }
}




