//
//  Vehicle.swift
//  Vehicle
//
//  Created by Trym Lintzen on 11-10-17.
//  Copyright © 2017 Trym. All rights reserved.
//

import Foundation

enum vehicleType {
    case car
    case tractor
    case lorry
}

class Vehicle {
    var maxSpeed : Double
    var weight: Double
    var colour: String
    var type: vehicleType  // je maakt enum om het type "vehicleType" te maken
    
    var lights: Bool? // het is optional, don't need to include in init
    
    var currentSpeed: Double = 0
    
    
    init(maxSpeed : Double, weight: Double, colour: String, type: vehicleType) {
        self.maxSpeed = maxSpeed
        self.weight = weight
        self.colour = colour
        self.type = type

        print("I just have been initialised")
    }
    
    func swichLights(on: Bool) -> String{
        lights = on
        var message = ""
        if on {
            message = "Lights on"
        } else {
            message = "Lights off"
        }
        return message
    }
    
    func accelerate() -> Double{
        while currentSpeed < maxSpeed {
            currentSpeed = currentSpeed + 1.0
            print(currentSpeed)
        }
        return currentSpeed
    }
    
    
}
