//
//  SecondViewController.swift
//  sbraddo1HW18
//
//  Created by Seleste Braddock on 11/17/15.
//  Copyright © 2015 Seleste Braddock. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

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
    
    @IBOutlet weak var textEntry: UITextField!
    
    @IBOutlet weak var thelabel: UILabel!
    
    @IBAction func convertButton(sender: AnyObject) {
        let romannum = romanToDec(textEntry.text!)
        if romannum == -1 {
            //don't do anything
            thelabel.text = "Invalid input!"
        } else {
            thelabel.text = "\(romannum)"
        }
    }
    


}

