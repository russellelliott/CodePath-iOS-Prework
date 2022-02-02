//
//  ViewController.swift
//  Prework
//
//  Created by Russell Elliott on 2/1/22.
//

import UIKit

class ViewController: UIViewController {

    //Input field to enter Text String
    @IBOutlet weak var TextInput: UITextField!
    
    //Default value of the text string
    var text = "Enter text in the field above"
    
    //Text String displayed
    @IBOutlet weak var TextStringDisplay: UILabel!
    
    //Code for "Change Text String" Button
    @IBAction func ChangeString(_ sender: Any) {
        //Change text of the Text String
        //Check if the TextInput field actually has text. If so, set TextStringDisplay to have that text. Otherwise, set it to the default text.
        if TextInput.text==""{
            //Text input is empty, display default text
            TextStringDisplay.text = text
        }else{
            //Text input not empty, dispaly the text
            TextStringDisplay.text = TextInput.text
        }
    }
    
    //Code to generate a random color
    //Source: https://stackoverflow.com/questions/29779128/how-to-make-a-random-color-with-swift
    func getRandomColor() -> UIColor {
         //Generate between 0 to 1
         let red:CGFloat = CGFloat(drand48())
         let green:CGFloat = CGFloat(drand48())
         let blue:CGFloat = CGFloat(drand48())

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    //Code for "Change Background Color" Button
    @IBAction func ChangeBackground(_ sender: Any) {
        //Call the function to change the background color to a random color
        self.view.backgroundColor = getRandomColor()
    }
    
    //Code for "Change Text Color" Button
    @IBAction func ChangeColor(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

