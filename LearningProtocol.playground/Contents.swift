 //: Playground - noun: a place where people can play

import UIKit

protocol Number{
    var floatValue : Float {get }
}


extension Float : Number{
    var floatValue: Float {
        return self
    }
}


extension Double : Number{
    var floatValue :Float{
        return Float(self)
    }
    
}
var three : Double = 3
var four : Float = 4

three.floatValue + four


extension Int : Number{
    var floatValue : Float{
        return Float(self)
    }
}


func +(valueA:Number, valueB:Number)-> Float{
   return valueA.floatValue + valueB.floatValue
}
func -(valueA:Number, valueB:Number){
    return valueA.floatValue - valueB.floatValue
}
func /(valueA:Number, valueB:Number)-> Float{
    return valueA.floatValue / valueB.floatValue
}
func *(valueA:Number, valueB:Number){
    return valueA.floatValue * valueB.floatValue
}


let x: Double = 12.35
let y : Int = 5

let q = x/y


