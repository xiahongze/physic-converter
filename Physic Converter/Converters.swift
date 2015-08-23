//
//  Converters.swift
//  Physic Converter
//
//  Created by Hongze Xia on 22/08/2015.
//  Copyright (c) 2015 Hongze Xia. All rights reserved.
//

import Foundation

let energyUnits = ["eV":1.0,"meV":1.0e3,"Hartree":0.0367502,"cm-1":8065.73,"THz":241.804,"Rydberg":0.0367502*2,"J":1.60210e-19,"kcal/mol":23.0609,"kJ/mol":96.4869,"Kelvin":11604.9]
let lengthUnits = ["Angstrom":1.0,"nm":0.1,"Bohr":1.88972612,"m":1.0e-10]
// Added support to convert from and to nm, which is good for spectrum conversion
func convertEnergy (fromUnit:String,from:Double,toUnit:String) -> Double {
    var to = 1.0
    if fromUnit != "nm" && toUnit != "nm" {
        to = energyUnits[toUnit]! / energyUnits[fromUnit]! * from
    }
    else if fromUnit == "nm" && toUnit != "nm" {
        to = energyUnits[toUnit]!/energyUnits["cm-1"]! / from * 1.0e7
    }
    else if fromUnit != "nm" && toUnit == "nm" {
        to = energyUnits[fromUnit]!/energyUnits["cm-1"]! / from * 1.0e7
    }
    else {
        to = 1.0
    }
    return to
}

func convertLength (fromUnit:String,from:Double,toUnit:String) -> Double {
    let to = lengthUnits[toUnit]! / lengthUnits[fromUnit]! * from
    return to
}
