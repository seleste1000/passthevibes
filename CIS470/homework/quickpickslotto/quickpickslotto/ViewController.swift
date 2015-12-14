//
//  ViewController.swift
//  quickpickslotto
//
//  Created by Seleste Braddock on 11/10/15.
//  Copyright © 2015 Seleste Braddock. All rights reserved.
//

import UIKit
//import Foundation




class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var picks: UITextView! //lists user's picks
    
    @IBOutlet weak var winningOdds: UILabel! //displays the user's odds of winning
    
    @IBOutlet weak var tRange: UITextField! //user specified range
    
    @IBOutlet weak var tNumPicks: UITextField! //user specified number of picks
    
    var quickPick = QuickPicks() //initializing instance of QuickPicks object
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.tNumPicks.delegate = self
        self.tRange.delegate = self
        
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
    
    var num_picks : Int? //optional int for tNumPicks
    var user_range : Int? //optional int for tRange
    
    @IBAction func genPicks(sender: AnyObject) {
        
        num_picks = Int(self.tNumPicks.text!)
        user_range = Int(self.tRange.text!)
        
        quickPick.numPicks = num_picks!
        quickPick.range = user_range!
        
        picks.text = quickPick.displayPicks()
        
        winningOdds.text = "1 in \(quickPick.getWinningOdds())"
        
    } //end genPicks button
    
}

