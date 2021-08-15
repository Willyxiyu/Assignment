import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentController: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    
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
    }
    
    @IBAction func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?,for state: UIControl.State){
            let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
                segmentController.setTitleTextAttributes(titleTextAttributes, for: .normal)
                segmentController.setTitleTextAttributes(titleTextAttributes, for: .selected)
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




