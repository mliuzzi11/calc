//
//  operations.swift
//  calc
//
//  Created by Maria Liuzzi on 20/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

func addition(i: Int) {
    // print("In addition")
    let additionResult = Int(args[i-1])! + Int(args[i+1])!
    // print("additionResult: \(additionResult)")
    args[i-1] = String(additionResult)
    args.remove(at: i+1)
    args.remove(at: i)
    
    if args.contains("+") {
        let index = args.index(of: "+")
        addition(i: index!)
    }
}

func subtraction(i: Int) {
    // print("In subtraction")
    let subtractionResult = Int(args[i-1])! - Int(args[i+1])!
    // print("subtractionResult: \(subtractionResult)")
    args[i-1] = String(subtractionResult)
    args.remove(at: i+1)
    args.remove(at: i)
    
    if args.contains("-") {
        let index = args.index(of: "-")
        subtraction(i: index!)
    }
}

func multiplication(i: Int) {
    // print("In multiplication")
    let multiplicationResult = Int(args[i-1])! * Int(args[i+1])!
    // print("multiplicationResult: \(multiplicationResult)")
    args[i-1] = String(multiplicationResult)
    args.remove(at: i+1)
    args.remove(at: i)
    
    if args.contains("x") {
        let index = args.index(of: "x")
        multiplication(i: index!)
    }
}

func division(i: Int) {
    // print("In division")
    let divisionResult = Int(args[i-1])! / Int(args[i+1])!
    // print("divisionResult: \(divisionResult)")
    args[i-1] = String(divisionResult)
    args.remove(at: i+1)
    args.remove(at: i)
    
    if args.contains("/") {
        let index = args.index(of: "/")
        division(i: index!)
    }
}

func modulus(i: Int) {
    // print("In modulus")
    let modulusResult = Int(args[i-1])! % Int(args[i+1])!
    // print("modulusResult: \(modulusResult)")
    args[i-1] = String(modulusResult)
    args.remove(at: i+1)
    args.remove(at: i)
    
    if args.contains("%") {
        let index = args.index(of: "%")
        modulus(i: index!)
    }
}
