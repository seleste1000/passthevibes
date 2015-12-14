//

//  main.swift

//  sbraddo1HW10

//

//  Created by Seleste Braddock on 9/21/15.

//  Copyright (c) 2015 Seleste. All rights reserved.

//




//import Foundation




//function to check divisibility

//parameters: a single int and a series of ints

//returns an integer array




func divisibilityCheck( var N: Int , intArray: Int...) {

    //create a mutable array from variadic parameter
    var numbers = [Int]()
    numbers = intArray

    //check to make sure N doesn't equal 0 (to avoid dividing by 0)

    //exits function if N is 0

    if N == 0{

        println("You can't divide by zero!!!!")

        return

    }

    var count = 0

    //loops through array and checks divisibility

    for i in numbers {

        //uses mod function to check for divisibility at index

        if i % N != 0 {

            //if the number isn't divisible by N then it's removed

            numbers.removeAtIndex(count)

        }

        else{

            //number stays in the array

        }

        count++

    }

    //prints final array

    println(numbers)

    

    return

}




divisibilityCheck( 11, 3, 8, 77, 153, 88, 10, 45, 121 )

divisibilityCheck( 3, 3, 8, 77, 153, 88, 10, 45, 121 )

divisibilityCheck( 5, 3, 8, 77, 153, 88, 10, 45, 121 )

divisibilityCheck( 13, 3, 8, 77, 153, 88, 10, 45, 121 )
