//
//  DeviceEnum.swift
//  MultiStoryBoard
//
//  Created by Mohsin on 30/06/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import UIKit


enum AppleDevices : Int{
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6P
    case iPad
    case iPod
    case NotDetected
    
    
    
    func desc(){
        switch self{
        case .iPhone4:
            println("iPhone4")
        case .iPhone5:
            println("iPhone5")
        case .iPhone6:
            println("iPhone6")
        case .iPhone6P:
            println("iPhone6p")
        case .iPad:
            println("iPad")
        case .iPod:
            println("ipod")
        case .NotDetected:
            println("NotDetected")
            
        }
    }

}


class DeviceDetection {
    
    class func sizeToDevice(size: CGSize) -> AppleDevices {
        switch size{
        case CGSize(width: 320.0, height: 480.0) :
            return AppleDevices.iPhone4
        case CGSize(width: 320.0, height: 568.0) :
            return AppleDevices.iPhone5
        case CGSize(width: 375.0, height: 667.0) :
            return AppleDevices.iPhone6
        case CGSize(width: 414.0, height: 736.0) :
            return AppleDevices.iPhone6P
        case CGSize(width: 768.0, height: 1024.0) :
            return AppleDevices.iPad
        case CGSize(width: 960.0, height: 640.0) :
            return AppleDevices.iPod
        case CGSize(width: 640.0, height: 960.0) :
            return AppleDevices.iPod

            
        default:
            return AppleDevices.NotDetected
        }
    }
    
}