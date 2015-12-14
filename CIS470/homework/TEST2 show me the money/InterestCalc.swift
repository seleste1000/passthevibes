//
//  InterestCalc.swift
//  
//
//  Created by Seleste Braddock on 10/6/15.
//
//

import Foundation

class InterestCalc { //initializing the InterestCalc class

    //private properties
    private var presentValue : Double   // holds the present value of the investment
    private var APR : Double    // holds the annual percentage rate
    private var years : Int // holds the number of years the investment will be allowed to grow
    
    //public methods
    public func getFutureValue() -> Double { //calculates
        
        var futureValue : Double // holds future value of the investment
        
        futureValue = presentValue * pow((1+APR), years) // calculating the future value of the investment

        return futureValue // returns the future value of the user's investment
        
    } //end function
    
    public func clearUserData(){ //clears the user's data and resets each value to 0
        presentValue = 0 //resets presentValue entry
        APR = 0 //resets APR entry
        years = 0 //resets years entry
    } //end function

}