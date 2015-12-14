//
//  main.swift
//  HW12
//
//  Created by Seleste Braddock on 9/30/15.
//  Copyright © 2015 Seleste Braddock. All rights reserved.
//

import Foundation




//Class definition
class QuickPicks{
    
    var range : Int   //represents range of value from which numbers will be chosen
    
    var numPicks : Int   //represents number of picks from the range
    
    //constructor
    
    init() {
        range = 0
        numPicks = 0
    }
    
    //overloaded constructor
    
    convenience init( let r : Int , let n : Int){
        
        self.init()
        self.range = r
        self.numPicks = n
    }
    
    private func factorial( let num : Double ) -> Double {
        
        var value : Double = 0
        
        if (num > 1){
            value = num * factorial(num-1)
        } else if num == 1 {
            value = num
        }
        
        return value
    }

    
    //accessor and mutator functions
    internal func getRange() -> Int { return range }
    internal func setRange( let r : Int ) { range = r }
    
    internal func getNumPicks() -> Int {return numPicks}
    internal func setNumPicks( let np : Int ){ numPicks = np }
    
    
    internal func generatePicks() -> [Int] {
        
        // generates numbers from data in range and numPicks member variables
        
        var picks = [Int]()   //initializes array to hold picks
        
        var i = 0   //counter for while loop (counts #of elements in array - 1)
        
        var random_pick : Int   //stores random numbers to be added to the picks array
        
        if range < numPicks {
            //dont do anything
            return [-1]
        }
        
        while i < numPicks {    //loops through picks array
            random_pick = Int(arc4random_uniform(UInt32(range)) + 1)    //holds a random number between 0 and the specified range
            //picks.removeAtIndex(i)      //removes the placeholder value at index i
            if picks.contains(random_pick) {
                //repeated number, dont add
            } else {
                picks += [random_pick]
                i++     //increases array count
            }
              //adds the random pick to the list of picks
        }
        
        return picks
        
    }
    
    internal func displayPicks() -> String {
        //returns a string containing the user's picks
        
        if range < numPicks {
            //dont do anything
            return ""
        }
        
        var allPicks = "" //initializing string to hold picks
        
        var i = 0 //counter for loop
        
        let listPicks = self.generatePicks() //holds array of generated picks
        
        while (i < listPicks.count) { //loops through array to get each number
            
            allPicks += "  \(listPicks[i])" //add the current number to the string
            i++ //increments the counter
        }
        
        return allPicks //returns all picks in the form of a string
    }
    
    
    internal func getWinningOdds() -> Double {
        
        if range < numPicks {
            //dont do anything
            return 0
        }
    
        var odds : Double
        let r = Double(range)
        let n = Double(numPicks)
    
        odds = Double(factorial(r) / (factorial(n) * factorial(Double(r - n))))
    
        return odds
    }
    
    
}