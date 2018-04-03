//
//  main.swift
//  calc
//
//  Created by Maria Liuzzi on 14/3/18.
//  Copyright © 2018 Maria Liuzzi. All rights reserved.
//

import Foundation
// import Cocoa

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program (“./calc”)
// print(Int(args[0])!)

// print(args) // No more: [“2”, “+”, “3”]
// print("args.count: \(args.count)")

if args.contains("%") {
    // print("Array contains %")
    let index = args.index(of: "%")
    // print("index: \(String(describing: index))")
    modulus(i: index!)
}

if args.contains("/") {
    // print("Array contains /")
    let index = args.index(of: "/")
    // print("index: \(String(describing: index))")
    division(i: index!)
}

if args.contains("x") {
    // print("Array contains x")
    let index = args.index(of: "x")
    // print("index: \(String(describing: index))")
    multiplication(i: index!)
}

if args.contains("-") {
    // print("Array contains -")
    let index = args.index(of: "-")
    // print("index: \(String(describing: index))")
    subtraction(i: index!)
}

if args.contains("+") {
    // print("Array contains +")
    let index = args.index(of: "+")
    // print("index: \(String(describing: index))") // previously: print("index: \(index)")
    addition(i: index!)
}

let result = args.map { Int($0)!}
// print(result)
print(result[0])
