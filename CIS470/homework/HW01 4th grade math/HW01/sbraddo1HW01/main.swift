//
//  main.swift
//  sbraddo1HW01


//Create a compact times table that ranges from 1 to 12.
//Make sure all of the rows and columns line up for easy reading.



import Foundation


let size = 12  //greatest value on table

let initial = 1 //first value on table


var val = 1 //current row number


for val in initial...size { //creates each row in the table
    
    var count = 1 //current column number
    
    for count in initial...size { //goes through each entry in the current row
        
        var result = count * val //finds value of current entry (multiplies row# by column#)
        
        if (count == size){ //the last value in each row
            
            println(String(format: "%5d", result)) //goes to the next line to start next row
            
            if val == 1{ //only after the first row on the table
                
                var i = 0 //index for next for loop
                
                for i in initial...size{ //prints \(size) number of times
                    print("-----") //creates a horizontal border
                }
                
                println("-----") //end of the border, goes to a new line for next row
            }
            
        }
            
        else if (count == 1){ //first value of each row (each value on first column)
            
            print(String(format: "%5d", result))
            print(" |") //creates a vertical border
            
        }
            
        else{ //for every other value on the table
            
            print(String(format: "%5d", result))
            
        }
        
    }
    
}