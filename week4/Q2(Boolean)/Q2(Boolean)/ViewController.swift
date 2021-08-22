//
//  ViewController.swift
//  Q2(Boolean)
//
//  Created by 林希語 on 2021/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var results: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputText.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Boolean(_ sender: UIButton) {
    
            }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        inputText.resignFirstResponder()
    }
    
    
        }
    
    extension ViewController : UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }


