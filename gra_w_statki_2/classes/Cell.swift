//
//  Boat.swift
//  gra_w_statki_2
//
//  Created by Пользователь on 16.12.2017.
//  Copyright © 2017 Пользователь. All rights reserved.
//

import Foundation
import Cocoa
class Cell {
    var isBoat:Bool
    var isDead:Bool
    var isBorder:Bool
    var isNewCell:Bool
    var isAttacked:Bool
    var isPlayer2Cell:Bool
    var button:NSButton!
    init(_isBoat:Bool,_isDead:Bool,_isBorder:Bool,_isNewCell:Bool,_isPlayer2Cell:Bool){
        isBoat=_isBoat
        isDead=_isDead
        isBorder=_isBorder
        isNewCell=_isNewCell
        isAttacked=false
        isPlayer2Cell=_isPlayer2Cell
       // button = nil
    }
    func describeCell()->Void
    {
        print(" IsBoat: "+String(isBoat)+" IsBorder: "+String(isBorder))
    }
    func getIsNewCell()->Bool
    {
        return isNewCell
    }
    func getIsBoat()->Bool
    {
        return isBoat;
    }
    func getIsDead()->Bool
    {
        return isDead;
    }
    func getIsBorder()->Bool
    {
        return isBorder
    }
    func setIsDead()->Bool
    {
        if(isBoat)
        {
            isDead=true
            self.button.image = NSImage(named: NSImage.Name(rawValue: "icons8-campfire-50.png"))
            return true;
        }
        else
        {
            isAttacked=true
            self.button.image = NSImage(named: NSImage.Name(rawValue: "Bomb-3-icon.png"))
            return false;
        }
    }
     func setIsBorder(_isBorder:Bool)->Void
    {
        isBorder=_isBorder
    }
     func setIsPlayer2Cell(_isPlayer2Cell:Bool)->Void
    {
        isPlayer2Cell=_isPlayer2Cell
    }
     func setIsNewCell(_isNewCell:Bool)->Void
    {
        print("Set is new cell")
        isNewCell=_isNewCell
    }
    
    func setIsBoat(_IsBoat:Bool)->Void
    {
        if(_IsBoat && !isPlayer2Cell){
            print("Change to boat "+String(self.button.tag))
            self.button.image = NSImage(named: NSImage.Name(rawValue: "ship-50.png"))
            self.button.title=String(button.tag)
        }
        else
        {
            self.button.image = NSImage(named: NSImage.Name(rawValue: "sea.png"))
            self.button.title=String(button.tag)
        }
        isBoat=_IsBoat;
    }
     func setButton(_button:NSButton)->Void
    {
        self.button=_button;
        print("Set button "+String(button.tag))
    }
}
