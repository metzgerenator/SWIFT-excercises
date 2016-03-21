
import Cocoa

enum TextAlignment: Int {
    case Left = 20
    case Right = 30
    case Center = 40
    case Justify = 50
}


var alignment = TextAlignment.Justify

print("Left has raw value \(TextAlignment.Left.rawValue)")
print("Right has raw value \(TextAlignment.Right.rawValue)")

print("Center has raw value \(TextAlignment.Center.rawValue)")
print("Justify has raw value \(TextAlignment.Justify.rawValue)")

print("The alignment variable has a raw value \(alignment.rawValue)")


// Create a raw value 
let myRawValue = 20


// Try to convert the raw value into a TextAlignment

if let myAlignment = TextAlignment(rawValue: myRawValue){
    //Conversion succeeded!  
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    //Conversion failed.  
    print("\(myRawValue) has no corresponding TextAlignment case")
}




switch alignment {
case .Left:
    print("left aligned")
    
    
case .Right:
    print("right aligned")
    
case .Center:
    print("center aligned")
    
case .Justify:
    print("justified")
}




enum ProgrammingLanguage: String {
    case Swift
    case ObjectiveC = "Objective-C"
    case C
    case Cpp = "C++"
    case Java
}


let myFavoriateLanguage = ProgrammingLanguage.Swift
print("My favorite programming language is \(myFavoriateLanguage.rawValue)")



enum Lightbulb {
    case On
    case Off
    
    
    func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0
            
        case .Off:
            return ambient
        }
    }

    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
            
        case .Off:
            self  = .On
        }
    }
  
    
}


var bulb = Lightbulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


bulb.toggle()
bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")




























