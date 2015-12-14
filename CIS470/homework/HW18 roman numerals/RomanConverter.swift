//
//  RomanConverter.swift
//  roman1
//
//  Created by Jerry Volcy on 10/24/15.
//  Copyright © 2015 Jerry Volcy. All rights reserved.
//

import Foundation



/* =======================================================================================
This function accepts an integer decimal value and returns a string containing its
roman numeral equivalent.
======================================================================================= */
func decToRoman (val_: Int) -> String
{
    let huns = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    let tens = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    let ones = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    
    var val = val_
    var res = ""
    
    //  Add 'M' until we drop below 1000.
    while (val >= 1000)
    {
        res += "M"
        val -= 1000;
    }
    
    // Add each of the correct elements, adjusting as we go.
    res += huns[val/100]
    val = val % 100;
    
    res += tens[val/10]
    val = val % 10;
    
    res += ones[val]
    
    return res
}



/* =======================================================================================
This function accepts a string representing a roman numeral and returns its decimal
equivalent as an integer.  If a non-roman character is found in the input string, the
function returns a -1.
======================================================================================= */
func romanToDec(input:String) -> Int
{
    //dictionary of roman characters
    let romanChar = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    
    var sum = 0
    var prev:Character = "%"
    
    //capitalize the input string and convert to a character array
    let inputArray = Array(input.uppercaseString.characters)
    let l = inputArray.count
    
    //march through the character array from right to left
    for var i=l-1; i>=0; i--
    {
        if (romanChar[String(inputArray[i])] < sum) && (inputArray[i] != prev)
        {
            if let x = romanChar[String(inputArray[i])]
            {
                sum -= x;
                prev = inputArray[i];
            }
            else        //invalid character
            {
                return -1
            }
        }
        else
        {
            if let x = romanChar[String(inputArray[i])]
            {
                sum += x;
                prev = inputArray[i];
            }
            else    //invalid character
            {
                return -1
            }
        }
    }
    return sum;
}





