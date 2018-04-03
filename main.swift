//
//  main.swift
//  calc
//
//  Created by Maria Liuzzi on 14/3/18.
//  Copyright © 2018 Maria Liuzzi. All rights reserved.
//

import Foundation
import Cocoa

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program

// Errors: Incomplete expression. Expected input of the form [number] [operator number ...]
// Errors: Unknown operator: +5

print("Please enter the calculation you want to do: ")

let input: String = String(readLine()!) // previously: let input: String? = String(readLine()!)

print("String entered: \(String(describing: input))")
    
let calculation = NSExpression(format:"\(input)") // doesn't work with modulus
let exprValue = calculation.expressionValue(with: nil, context: nil)
print("exprValue: \(exprValue ?? 0)")
    
// https://stackoverflow.com/questions/30342744/swift-how-to-get-integer-from-string-and-convert-it-into-integer
// https://stackoverflow.com/questions/24200888/any-way-to-replace-characters-on-swift-string
// https://stackoverflow.com/questions/1059559/split-strings-with-multiple-delimiters
