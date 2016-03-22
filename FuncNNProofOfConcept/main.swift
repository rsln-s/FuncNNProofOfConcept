//
//  main.swift
//  FuncNNProofOfConcept
//
//  Created by Руслан on 22.03.16.
//  Copyright © 2016 MIPT. All rights reserved.
//

import Foundation

print("Hello, World!")

let el1 = [1.0, 0.0, 1.0, 0.0, 0.0, 1.0]
let el2 = [1.0, 1.0, 1.0, 1.0]

let testmatr1 = Matrix(elements: el1, rowsNum: 3, columnsNum: 2)
let testmatr2 = Matrix(elements: el2, rowsNum: 2, columnsNum: 2)
print(dotProduct(testmatr1, arg2: testmatr2)!.description())

