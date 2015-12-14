//
//  FirstViewController.swift
//  sbraddo1HW18
//
//  Created by Seleste Braddock on 11/17/15.
//  Copyright © 2015 Seleste Braddock. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var errorlabel: UILabel!
    
    @IBOutlet weak var textEntry: UITextField!
    
    @IBOutlet weak var romanlabel: UILabel!
    
    @IBOutlet weak var theslider: UISlider!
    
    @IBOutlet weak var thelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.textEntry.delegate = self
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    } //pressing return closes the keyboard
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func slideraction(sender: AnyObject) {
        
        thelabel.text = "\(Int(theslider.value))"
        
        let z = Int(theslider.value)
        theslider.value = Float(z)
        
        //convert to roman numerals
        romanlabel.text = decToRoman(Int(theslider.value))
    }
    
    @IBAction func upButton(sender: AnyObject) {
        
        //increment label and slider
        theslider.value += 1
        
        thelabel.text = "\(Int(theslider.value))"
        
        //convert to roman numerals
        romanlabel.text = decToRoman(Int(theslider.value))
    }
    
    @IBAction func downButton(sender: AnyObject) {
        
        //increment label and slider
        theslider.value -= 1
        thelabel.text = "\(Int(theslider.value))"
        
        //convert to roman numerals
        romanlabel.text = decToRoman(Int(theslider.value))
    }
    
    @IBAction func thetextfield(sender: AnyObject) {
        
        //input validation
        var textconvert_entry : Int?
        
        textconvert_entry = Int(textEntry.text!)
        
        if let z = textconvert_entry { //unwrapping the optional int
            
            textEntry.text = "\(z)"
            
            //update label and slider
            
            thelabel.text = textEntry.text
            theslider.value = Float(textEntry.text!)!
            
            //convert to roman numerals
            romanlabel.text = decToRoman(Int(thelabel.text!)!)
            
            errorlabel.text = ""
            
        } else {
            //error message
            errorlabel.text = "Invalid input!!!"
        }
        
    }
    
}

