//
//  NeuralNetwork.swift
//  FuncNNProofOfConcept
//
//  Created by Руслан on 22.03.16.
//  Copyright © 2016 MIPT. All rights reserved.
//

import Foundation

class ObjNeuralNetwork {
    let inputLayerSize : Int
    let outputLayerSize : Int
    let hiddenLayerSize : Int
    var w1 : Matrix
    var w2 : Matrix
    
    init(inputLayerSize : Int, outputLayerSize : Int, hiddenLayerSize:Int){
        self.inputLayerSize = inputLayerSize
        self.outputLayerSize = outputLayerSize
        self.hiddenLayerSize = hiddenLayerSize
        w1 = Matrix(rowsNum: inputLayerSize, columnsNum: hiddenLayerSize)
        w2 = Matrix(rowsNum: hiddenLayerSize, columnsNum: outputLayerSize)
    }
    
    func forward(input: Matrix) -> Matrix?{
        //TODO: how we treat optionals here is really messy; should think of something nice
        if let z2 = dotProduct(input, arg2: w1){
            let a2 = z2.map( { 1/(1 + exp(-$0)) })
            if let z3 = dotProduct(a2, arg2: w2) {
                return z3.map( { 1/(1 + exp(-$0)) } )
            }
        }
        return nil
    }
}