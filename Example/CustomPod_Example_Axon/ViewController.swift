//
//  ViewController.swift
//  CustomPod_Example_Axon
//
//  Created by Zhenya-Petrovskyi-Axon on 11/02/2021.
//  Copyright (c) 2021 Zhenya-Petrovskyi-Axon. All rights reserved.
//

import UIKit
import CustomPod_Example_Axon

class ViewController: UIViewController {

    private let publicKey = "GoodMood"

    override func viewDidLoad() {
        super.viewDidLoad()
        doMath(number1: 3, number2: 4.5)
        doMath(number1: 2, number2: 1.3)
    }
    
    private func doMath(number1: Int, number2: Double) {
        let calculator = Calculator.init(key: publicKey)
        let add = calculator.doMath(n1: Double(number1), n2: number2, operation: .add)
        let subtract = calculator.doMath(n1: Double(number1), n2: number2, operation: .subtract)
        let multiply = calculator.doMath(n1: Double(number1), n2: number2, operation: .multiply)
        let divide = calculator.doMath(n1: Double(number1), n2: number2, operation: .divide)
        
        print("Operations with \(number1) and \(number2) will equal in case of: \n adding = \(add) \n subtracting = \(subtract) \n multiplying = \(multiply) \n dividing = \(divide)")
    }

}

