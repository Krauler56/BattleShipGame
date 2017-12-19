//
//  Boat.swift
//  gra_w_statki_2
//
//  Created by Пользователь on 16.12.2017.
//  Copyright © 2017 Пользователь. All rights reserved.
//

import Foundation
import Cocoa
struct Cell {
    var isBoat:Bool
    var isDead:Bool
    var button:NSButton! = nil
    init(_isBoat:Bool){
        isBoat=_isBoat
        isDead=false
        
    }
    func describeCell()->Void
    {
        print("Describe: button tag "+String(button.tag)+" IsBoat: "+String(isBoat))
    }
    func getIsBoat()->Bool
    {
        return isBoat;
    }
    func getIsDead()->Bool
    {
        return isDead;
    }
    
    mutating func setIsBoat(_IsBoat:Bool)->Void
    {
        if(_IsBoat){
            print("Change to boat "+String(self.button.tag))
         button.image = NSImage(named: NSImage.Name(rawValue: "ship-50.png"))
        }
        else
        {
            button.image = NSImage(named: NSImage.Name(rawValue: "sea.png"))
        }
        isBoat=_IsBoat;
    }
    mutating func setButton(_button:NSButton)->Void
    {
        button=_button;
        print("Set button "+String(button.tag))
    }
}
