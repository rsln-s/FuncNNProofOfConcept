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
    
    init(inputLayerSize : Int, outputLayerSize : Int, hiddenLayerSize:Int){
        self.inputLayerSize = inputLayerSize
        self.outputLayerSize = outputLayerSize
        self.hiddenLayerSize = hiddenLayerSize
    }
}