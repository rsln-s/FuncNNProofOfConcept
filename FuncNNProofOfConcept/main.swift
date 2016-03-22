//
//  main.swift
//  FuncNNProofOfConcept
//
//  Created by Руслан on 22.03.16.
//  Copyright © 2016 MIPT. All rights reserved.
//

import Foundation

print("Hello, World!")

let el1 = [1.0, 2.0, 3.0, 4.0 , 5.0, 6.0]
let el2 = [1.0, 2.0, 3.0, 4.0 , 5.0, 6.0, 7.0, 8.0, 9.0]

let testmatr1 = Matrix(elements: el1, rowsNum: 2, columnsNum: 3)
let testmatr2 = Matrix(elements: el2, rowsNum: 3, columnsNum: 3)

var NN = ObjNeuralNetwork(inputLayerSize: 2, outputLayerSize: 1, hiddenLayerSize: 3)
var X = Matrix(elements: [3.0, 5.0, 5.0, 1.0, 10.0, 2.0], rowsNum: 3, columnsNum: 2)


print(NN.forward(X)!.description())

