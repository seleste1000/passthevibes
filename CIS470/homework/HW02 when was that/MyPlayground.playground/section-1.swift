// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//
//  main.swift
//  HW02
//
//  Created by Braddock, Seleste on 8/26/15.
//  Copyright (c) 2015 Braddock, Seleste. All rights reserved.
//

import Foundation


print("Enter past month: ")

let pastMonth = console_input().toInt()!

print("Enter past year: ")

let pastYear = console_input().toInt()!

print("Enter current month: ")

var currentMonth = console_input().toInt()!

print("Enter current year: ")

var currentYear = console_input().toInt()!

var timeYears = 0
var timeMonths = 0

if pastMonth > currentMonth {
    
    timeYears = pastYear - currentYear - 1
    timeMonths = (12 - pastMonth) + (currentMonth)
    
}
else {
    timeYears = pastYear - currentYear
    timeMonths = currentMonth - pastMonth
}



println("\(pastMonth)-\(pastYear) was \(timeYears) year(s), \(timeMonths) month(s) ago.")


