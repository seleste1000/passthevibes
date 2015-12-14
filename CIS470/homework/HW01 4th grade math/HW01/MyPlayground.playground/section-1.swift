// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


//
//  main.swift
//  sbraddo1HW01


import Foundation


let size = 12

let initial = 1

var i = 0

var val = 1


while(val <= size){
    
    var count = 1
    
    while(count <= size){
        
        var result = count * val
        
        if (count == size){
            
            println(String(format: "%5d", result))
            if val == 1{
                var k = 0
                while k < size{
                    print("-----")
                    k++
                }
                println("-----")
            }
            
        }
            
        else if (count == 1){
            
            print(String(format: "%5d", result))
            print(" |")
            
        }
            
        else{
            
            print(String(format: "%5d", result))
            
        }
        
        count++
        
    }
    
    
    val++
    
}