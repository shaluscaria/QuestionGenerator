 //Extending Float, Double, Int to confirm to protocol Number

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

extension Int : Number{
    var floatValue : Float{
        return Float(self)
    }
}


func +(valueA:Number, valueB:Number)-> Float{
   return valueA.floatValue + valueB.floatValue
}
func -(valueA:Number, valueB:Number) -> Float{
    return valueA.floatValue - valueB.floatValue
}
func /(valueA:Number, valueB:Number)-> Float{
    return valueA.floatValue / valueB.floatValue
}
func *(valueA:Number, valueB:Number) -> Float{
    return valueA.floatValue * valueB.floatValue
}


let x: Double = 12.35
let y : Int = 5

let q = x/y


