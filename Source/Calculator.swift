//
//  Calculator.swift
//  CocoaPodsSDK
//
//  Created by Evhen Petrovskyi on 28.10.2021.
//

import Foundation

// Enum, that describes math method operation behavior
public enum Operation {
    case add
    case subtract
    case divide
    case multiply
}

/*
 Use public class, so it wont be closed for further usage after installing cocoaPod
 */
public class Calculator {
    private let privateKey: String = "GoodMood"
    private let publicKey: String
    
    private var operationsEnabled: Bool = false
    
    public init(key: String) {
        self.publicKey = key
       operationsEnabled = verify(privateKey: privateKey, publicKey: key)
    }
    
    private func verify(privateKey: String, publicKey: String) -> Bool {
        privateKey == publicKey
    }
    
    private func createPrivateKey() {
        // We will do that later
    }
    
    // Simple reusable method to perform simple calculations
    public func doMath<T: FloatingPoint>(n1: T, n2: T, operation: Operation) -> T {
        switch operation {
        case .add:
           return n1 + n2
        case .subtract:
           return n1 - n2
        case .divide:
           return n1 / n2
        case .multiply:
           return n1 * n2
        }
    }
}
