//
//  Board.swift
//  gra_w_statki_2
//
//  Created by Пользователь on 16.12.2017.
//  Copyright © 2017 Пользователь. All rights reserved.
//

import Foundation
import Cocoa
class Board {
    var emptyCell = Cell(_isBoat:false)
    var array : [[Cell]] = Array(repeating: Array(repeating: Cell(_isBoat: false), count: 10), count: 10)
    init ()
    {
    
    }

    func setCellButton(coordX:Int,coordY:Int,__button:NSButton)->Void
    {
         array[coordX][coordY].setButton(_button: __button);
        print("Button tag "+String(__button.tag))
    }
    func setCellIsBoat(coordX:Int,coordY:Int,_isboat:Bool)->Void
    {
        array[coordX][coordY].setIsBoat(_IsBoat: _isboat)
        print("SetCellIsBoat: "+String(coordX)+" "+String(coordY))
    }
    func getCell(X:Int,Y:Int)->Cell
    {
        if(X<10&&Y<10&&X>=0&&Y>=0){
        return array[X][Y]
        }
        else
        {
            return emptyCell
        }
    }
    func isBoatNear(coordX:Int,coordY:Int,CoordName:String)->(Bool,String)
    {
        
        switch CoordName {
        case "XY":
            if getCell(X:coordX+1,Y:coordY).getIsBoat()
            {
                return (true,"X+")
            }
                else if getCell(X:coordX-1,Y:coordY).getIsBoat()
            {
                return (true,"X-")
            }
            else if getCell(X:coordX,Y:coordY+1).getIsBoat(){
                return (true,"Y+")
            }
            else if getCell(X:coordX,Y:coordY-1).getIsBoat(){
                return (true,"Y-")
            }
            else
            {
                return (false,"N")
            }
        case "X-":
            
            if getCell(X:coordX+1,Y:coordY).getIsBoat()
            {
                return (true,"X-")
            }
            else
            {
                return (false,"N")
            }
        case "X+":
            
            if getCell(X:coordX-1,Y:coordY).getIsBoat()
            {
                return (true,"X+")
            }
            else
            {
                return (false,"N")
            }
        case "Y-":
            
            if getCell(X:coordX,Y:coordY+1).getIsBoat()
            {
                return (true,"Y+")
            }
            else
            {
                return (false,"N")
            }
        case "Y+":
            
            if getCell(X:coordX,Y:coordY-1).getIsBoat()
            {
                return (true,"Y-")
            }
            else
            {
                return (false,"N")
            }
        default:
            return (false,"N");
        }
        
    }
    
    func setCellShip(CountOfCells:Int)->Void
    {
       
    }
    
}
