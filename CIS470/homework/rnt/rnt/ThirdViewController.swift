//
//  ThirdViewController.swift
//  rnt
//
//  Created by Seleste Braddock on 11/12/15.
//  Copyright © 2015 Seleste Braddock. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var theslider: UISlider!
    
    @IBOutlet weak var labellabellabel: UILabel!
    
    @IBAction func slider3(sender: AnyObject) {
        
        labellabellabel.text = "\(theslider.value)"
    }

    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}