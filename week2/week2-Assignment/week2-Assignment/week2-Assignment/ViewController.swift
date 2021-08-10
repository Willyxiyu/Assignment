//
//  ViewController.swift
//  week2-Assignment
//
//  Created by 林希語 on 2021/8/9.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Btn: UIButton!
    
    @IBOutlet weak var randomText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.view.backgroundColor = UIColor.mainColorKeyLime
    }
    @IBAction func ButtonPressed(_ sender: UIButton) {
        let arrayText = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
                     "Contrary to popular belief, Lorem Ipsum is not simply random text.",
                     "Richard McClintock, a Latin profesor at Hampden-Sydey Cpllege in.",
                     "looked up one of the more obscure Latin words, consectetur",
                     "from a Lorem Ipsum passage, and going through the cities of the word",
                     "This book is a treatise on the theory of ethics, very popular during the.",
                     "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."]
        randomText.text = arrayText.randomElement()
        
        let redValue = CGFloat(drand48())
        let greenValue = CGFloat(drand48())
        let blueValue = CGFloat(drand48())
        

        self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
    }

}



