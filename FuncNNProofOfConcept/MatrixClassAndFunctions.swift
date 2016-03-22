//
//  MathematicalClassesAndFunctions.swift
//  FuncNNProofOfConcept
//
//  Created by Руслан on 22.03.16.
//  Copyright © 2016 MIPT. All rights reserved.
//

import Foundation

//kind sorta accelerate-compatible

class Matrix{
    var elements : [Double]
    var rowsNum : Int
    var columnsNum : Int
    
    init(elements : [Double], rowsNum : Int, columnsNum : Int){
        if elements.count != rowsNum * columnsNum {
            print("Error in Matrix init: incorrect size of elements array")
            self.elements = []
            self.rowsNum = 0
            self.columnsNum = 0
        }
        self.elements = elements
        self.rowsNum = rowsNum
        self.columnsNum = columnsNum
    }
    
    func setElement(row : Int, col : Int, value:Double){
        elements[(row * self.columnsNum) + col] = value
    }
    
    func getElement(row : Int, col : Int) -> Double{
        return elements[(row * self.columnsNum) + col]
    }
    
    func description() -> String{
        var res = ""
        for row in 0...(rowsNum - 1) {
            for col in 0...(columnsNum - 1){
                res += getElement(row, col: col).description
                res += " "
            }
            res += "\n"
        }
        return res
    }

}



func dotProduct (arg1 : Matrix, arg2 : Matrix) -> Matrix?{
    //TODO: Should be using accelerate.framework
    if arg1.columnsNum != arg2.rowsNum {
        print("Error in dotProduct: matrices of incompatible size")
        return nil
    }
    
    let res = Matrix(elements: [Double](count: (arg1.rowsNum * arg2.columnsNum), repeatedValue: 0), rowsNum: arg1.rowsNum, columnsNum: arg2.columnsNum)
    for row in 0...(arg1.rowsNum - 1) {
        for col in 0...(arg2.columnsNum - 1){
            var sum = 0.0
            for pivot in 0...(arg1.columnsNum-1) { sum += arg1.getElement(row, col: pivot) * arg2.getElement(pivot, col: col) }
            res.setElement(row, col: col, value: sum)
        }
    }
    return res
}