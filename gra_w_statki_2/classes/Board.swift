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
    class Boat{
        var cells : [Cell] = [Cell]()
        var XY:[(Int,Int)] = []
        var count :Int = 0
        weak var board:Board! = nil
        init()
        {
          
        }
        func setBoat(_cell:Cell,_XY:(Int,Int))
        {
            XY.append((_XY.0, _XY.1))
            cells.append(_cell)
            count=count+1
        }
        func getBoat4() -> [Cell]
        {
            return cells
        }
        func isFull(_ind:Int)->Bool
        {
            if count==_ind{
                return true
            }
            else
            {
                return false
            }
        }
        func getInfoAboutIsDeadsCells()->Int
        {
            var counter:Int = 0
            for ind in cells
            {
                
                if(ind.getIsDead())
                {
                    counter=counter+1
                }
            }
            if(counter==count)
            {
                for ind in XY
                {
                    if(!board.getCell(X: ind.0-1, Y: ind.1-1).getIsBorder())
                    {
                    board.getCell(X: ind.0-1, Y: ind.1-1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0-1][ind.1-1]=true
                        }
                    }
                    if(!board.getCell(X: ind.0+1, Y: ind.1).getIsBorder())
                    {
                        board.getCell(X: ind.0+1, Y: ind.1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0+1][ind.1]=true
                        }
                    }
                    if(!board.getCell(X: ind.0-1, Y: ind.1+1).getIsBorder())
                    {
                        board.getCell(X: ind.0-1, Y: ind.1+1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0-1][ind.1+1]=true
                        }
                    }
                    if(!board.getCell(X: ind.0, Y: ind.1-1).getIsBorder())
                    {
                        board.getCell(X: ind.0, Y: ind.1-1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0][ind.1-1]=true
                        }
                    }
                    if(!board.getCell(X: ind.0-1, Y: ind.1).getIsBorder())
                    {
                        board.getCell(X: ind.0-1, Y: ind.1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0-1][ind.1]=true
                        }
                    }
                    if(!board.getCell(X: ind.0, Y: ind.1+1).getIsBorder())
                    {
                        board.getCell(X: ind.0, Y: ind.1+1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0][ind.1+1]=true
                        }
                    }
                    if(!board.getCell(X: ind.0, Y: ind.1-1).getIsBorder())
                    {
                        board.getCell(X: ind.0, Y: ind.1-1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0][ind.1-1]=true
                        }
                    }
                    if(!board.getCell(X: ind.0+1, Y: ind.1+1).getIsBorder())
                    {
                        board.getCell(X: ind.0+1, Y: ind.1+1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0+1][ind.1+1]=true
                        }
                    }
                    if(!board.getCell(X: ind.0+1, Y: ind.1-1).getIsBorder())
                    {
                        board.getCell(X: ind.0+1, Y: ind.1-1).setIsDead()
                        if (board.getCell(X: ind.0-1, Y: ind.1-1).isPlayer2Cell){
                        randomHelperArray[ind.0+1][ind.1-1]=true
                        }
                    }
                    
                }
            }
            return counter
            
        }
        func getInfoAboutBoat()->String
        {
            return " "+String(count)+" Cell boat: "+String(getInfoAboutIsDeadsCells())+" / "+String(count)+"\n"
        }
    }
    func getInfoAboutBoats()->[String]
    {
        var info:[String] = [""]
        info.append(boat4.getInfoAboutBoat())
        info.append(boat3_1.getInfoAboutBoat())
        info.append(boat3_2.getInfoAboutBoat())
        info.append(boat2_1.getInfoAboutBoat())
        info.append(boat2_2.getInfoAboutBoat())
        info.append(boat2_3.getInfoAboutBoat())
        info.append(boat1_1.getInfoAboutBoat())
        info.append(boat1_2.getInfoAboutBoat())
        info.append(boat1_3.getInfoAboutBoat())
        info.append(boat1_4.getInfoAboutBoat())
        return info
    }
    var boat4:Boat = Boat()
    var boat3_1:Boat = Boat()
    var boat3_2:Boat = Boat()
    var boat2_1:Boat = Boat()
    var boat2_2:Boat = Boat()
    var boat2_3:Boat = Boat()
    var boat1_1:Boat = Boat()
    var boat1_2:Boat = Boat()
    var boat1_3:Boat = Boat()
    var boat1_4:Boat = Boat()
    var emptyCell = Cell(_isBoat:false, _isDead: false,_isBorder:true, _isNewCell: false,_isPlayer2Cell:false)
    //var array : [[Cell]] ;
    let array:[[Cell]] = (0...9).map { _ in (0...9).map { _ in Cell(_isBoat: false,_isDead:false,_isBorder:false,_isNewCell: false,_isPlayer2Cell:false) } }
    init ()
    {
        boat4.board=self
        boat3_1.board=self
        boat3_2.board=self
        boat2_1.board=self
        boat2_2.board=self
        boat2_3.board=self
        boat1_1.board=self
        boat1_2.board=self
        boat1_3.board=self
        boat1_4.board=self
        
      //  array = Array(repeating: Array(repeating: Cell(_isBoat: false,_isDead:false,_isBorder:false,_isNewCell: false,_isPlayer2Cell:false), count: 10), count: 10) Zle bo bedzie kopia klasy !!!!!!!!!!
    }
    func isAllCellsAreDead()->Bool
    {
        var isCellNotDead=false
        for i in 0...9
        {
            for k in 0...9
            {
                if (!array[i][k].getIsDead() && array[i][k].getIsBoat())
                {
                       isCellNotDead=true
                }
            }
        }
        
        return !isCellNotDead
    }
    func setCellButton(coordX:Int,coordY:Int,__button:NSButton)->Void
    {
        array[coordX][coordY].setButton(_button: __button);
        print("SetCellButton "+String(__button.tag))
      
    }
    func setCellIs2Player(coordX:Int,coordY:Int,_is:Bool)->Void
    {
        array[coordX][coordY].setIsPlayer2Cell(_isPlayer2Cell: _is);
        //  print("Button tag "+String(__button.tag))
    }
    func setCellIsBoat(coordX:Int,coordY:Int,_isboat:Bool)->Void
    {
        array[coordX][coordY].setIsBoat(_IsBoat: _isboat)
        print("SetCellIsBoat: "+String(coordX)+" \n "+String(coordY))
    }
    func setCellIsNewCell(coordX:Int,coordY:Int,_isNewCell:Bool)->Void
    {
        array[coordX][coordY].setIsNewCell(_isNewCell: _isNewCell)
        //  print("Button tag "+String(__button.tag))
    }
    func attackCell(coordX:Int,coordY:Int) -> Bool
    {
        return array[coordX][coordY].setIsDead()
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
    func setBoatCell(_amount:Int,_cell:Cell,XY:(Int,Int))->Void{
        switch _amount{
        case 4 :
            boat4.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
        case 3 :
            if(boat3_1.isFull(_ind: 3)){
                boat3_2.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
            }
            else
            {
                boat3_1.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
            }
        case 2 :
            if (boat2_2.isFull(_ind: 2) && boat2_3.isFull(_ind: 2))
            {
                boat2_1.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
            }
            else
            {
                if(boat2_2.isFull(_ind: 2))
                {
                  boat2_3.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
                }
                else
                {
                    boat2_2.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
                }
            }
        case 1 :
           if (boat1_2.isFull(_ind: 1) && boat1_3.isFull(_ind: 1) && boat1_4.isFull(_ind: 1))
           {
                boat1_1.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
            }
            else
           {
                if (boat1_3.isFull(_ind: 1) && boat1_4.isFull(_ind: 1))
                {
                 boat1_2.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
                }
                else
                {
                        if(boat1_3.isFull(_ind: 1))
                        {
                           boat1_4.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
                        }
                        else
                        {
                        boat1_3.setBoat(_cell: _cell,_XY:(XY.0,XY.1))
                        }
                }
            }
        default:
            print("SetBoatCell Error")
        }
    }
    func isBoatNear(coordX:Int,coordY:Int,CoordName:String,_amount:Int,_playboard:Board)->(Bool,String)
    {
        switch CoordName {
        case "XY+":
        if getCell(X:coordX+1,Y:coordY).getIsBoat() || getCell(X:coordX-1,Y:coordY).getIsBoat() || getCell(X:coordX,Y:coordY+1).getIsBoat() || getCell(X:coordX,Y:coordY-1).getIsBoat() || getCell(X:coordX+1,Y:coordY+1).getIsBoat() || getCell(X:coordX-1,Y:coordY-1).getIsBoat() ||
            getCell(X:coordX-1,Y:coordY+1).getIsBoat() || getCell(X:coordX+1,Y:coordY-1).getIsBoat()
        {
            return (true,"N")
        }
        else
        {
            return (false,"N")
        }
            
        case "XY":
            if getCell(X:coordX+1,Y:coordY).getIsNewCell()
            {
                if(_amount>2){
                for ind in 0..._amount-3 {
                    let newCell:Cell = getCell(X: coordX-(ind+1), Y: coordY)
                    print("DESC X-:")
                    print(newCell.describeCell())
                    print("=================================")
                    // newCell.describeCell()
                    if(newCell.getIsBorder() || _playboard.isBoatNear(coordX: coordX-(ind+1), coordY: coordY, CoordName: "XY+", _amount: 5, _playboard: _playboard).0)
                    {
                       // isFutureBoadOk=false
                        return (false,"N")
                    }
                }
                }
                else
                {
                    if(_playboard.isBoatNear(coordX: coordX-1, coordY: coordY, CoordName: "XY+", _amount: 5, _playboard: _playboard).0 )
                    {
                        return (false,"N")
                    }
                }
                setCellIsNewCell(coordX:coordX+1,coordY:coordY,_isNewCell: false)
           //   setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY))
               print("SETCELLISNEWCELL - 1  X=\(coordX) Y=\(coordY)")
                return (true,"X-")
            }
            
            else if getCell(X:coordX-1,Y:coordY).getIsNewCell()
            {
                if(_amount>2){
                for ind in 0..._amount-3 {
                    let newCell:Cell = getCell(X: coordX+(ind+1), Y: coordY)
                    print("DESC X+:")
                    print(newCell.describeCell())
                    print("=================================")
                    if(newCell.getIsBorder() || _playboard.isBoatNear(coordX: coordX+(ind+1), coordY: coordY, CoordName: "XY+", _amount: 5, _playboard: _playboard).0)
                    {
                        return (false,"N")
                        //isFutureBoadOk=false
                    }
                }
                }
                else
                {
                    if(_playboard.isBoatNear(coordX: coordX+1, coordY: coordY, CoordName: "XY+", _amount: 5, _playboard: _playboard).0 )
                    {
                        return (false,"N")
                    }
                }
               setCellIsNewCell(coordX:coordX-1,coordY:coordY,_isNewCell: false)
             //   setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY))
                print("SETCELLISNEWCELL - 2   X=\(coordX) Y=\(coordY)")
                return (true,"X+")
            }
                
            else if getCell(X:coordX,Y:coordY+1).getIsNewCell()
            {
                if(_amount>2){
                for ind in 0..._amount-3 {
                    let newCell:Cell = getCell(X: coordX, Y: coordY-(ind+1))
                    print("DESC Y-:")
                    print(newCell.describeCell())
                    print("=================================")
                    if(newCell.getIsBorder() || _playboard.isBoatNear(coordX: coordX, coordY: coordY-(ind+1), CoordName: "XY+", _amount: 5, _playboard: _playboard).0)
                    {
                       // isFutureBoadOk=false
                        return (false,"N")
                    }
                }
                }
                else
                {
                    if(_playboard.isBoatNear(coordX: coordX, coordY: coordY-1, CoordName: "XY+", _amount: 5, _playboard: _playboard).0 )
                    {
                        return (false,"N")
                    }
                }
                setCellIsNewCell(coordX:coordX,coordY:coordY+1,_isNewCell: false)
             //   setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY))
                print("SETCELLISNEWCELL - 3  X=\(coordX) Y=\(coordY)")
                return (true,"Y-")
            }
                
            else if getCell(X:coordX,Y:coordY-1).getIsNewCell()
            {
                if(_amount>2){
                for ind in 0..._amount-3 {
                    var newCell:Cell = getCell(X: coordX, Y: coordY+(ind+1))
                    print("DESC Y+:")
                    print(newCell.describeCell())
                    print("=================================")
                    if(newCell.getIsBorder() || _playboard.isBoatNear(coordX: coordX, coordY: coordY+(ind+1), CoordName: "XY+", _amount: 5, _playboard: _playboard).0)
                    {
                        return (false,"N")
                      //  isFutureBoadOk=false
                    }
                }
                }
                else
                {
                    if(_playboard.isBoatNear(coordX: coordX, coordY: coordY+1, CoordName: "XY+", _amount: 5, _playboard: _playboard).0 )
                    {
                        return (false,"N")
                    }
                }
               setCellIsNewCell(coordX:coordX,coordY:coordY-1,_isNewCell: false)
                //setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY))
                print("SETCELLISNEWCELL - 4 X=\(coordX) Y=\(coordY)")
                return (true,"Y+")
            }
            else
            {
                print("SETCELLISNEWCELL ERROR X=\(coordX) Y=\(coordY)")
                return (false,"N")
            }
        case "X-":
            var isFutureBoadOk:Bool = true
            if (getCell(X:coordX+1,Y:coordY).getIsBoat() && !getCell(X:coordX-1,Y:coordY).getIsBoat())
            {
                if(_amount>2){
                    if(isFutureBoadOk)
                    {
                        _playboard.setCellIsBoat(coordX: coordX, coordY: coordY, _isboat: true)
                        setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY),XY:(coordX,coordY))
                        for ind in 0..._amount-3 {
                            _playboard.setCellIsBoat(coordX: coordX-(ind+1), coordY: coordY, _isboat: true)
                            var newCell:Cell = getCell(X: coordX-(ind+1), Y: coordY)
                            setBoatCell(_amount:_amount,_cell:newCell,XY:(coordX-(ind+1),coordY))
                    }
                    return (true,"X-")
                }
                }
                else
                {
                    _playboard.setCellIsBoat(coordX: coordX, coordY: coordY, _isboat: true)
                    setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY),XY:(coordX,coordY))
                    return (true,"X-")
                }
                return (true,"X-")
            }
            else
            {
                return (false,"N")
            }
        case "X+":
            var isFutureBoadOk:Bool = true
            if (getCell(X:coordX-1,Y:coordY).getIsBoat() && !getCell(X:coordX+1,Y:coordY).getIsBoat())
            {
                    if(_amount>2){
                        
                        if(isFutureBoadOk)
                        {
                            
                            _playboard.setCellIsBoat(coordX: coordX, coordY: coordY, _isboat: true)
                            setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY),XY:(coordX,coordY))
                            for ind in 0..._amount-3 {
                                _playboard.setCellIsBoat(coordX: coordX+(ind+1), coordY: coordY, _isboat: true)
                                var newCell:Cell = getCell(X: coordX+(ind+1), Y: coordY)
                                setBoatCell(_amount:_amount,_cell:newCell,XY:(coordX+(ind+1),coordY))
                            }
                            return (true,"X+")
                        }
                    }
                    else
                    {
                        _playboard.setCellIsBoat(coordX: coordX, coordY: coordY, _isboat: true)
                        setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY),XY:(coordX,coordY))
                        return (true,"X+")
                    }
                    return (true,"X+")
            }
            else
            {
                return (false,"N")
            }
        case "Y-":
            var isFutureBoadOk:Bool = true
            if (getCell(X:coordX,Y:coordY+1).getIsBoat() && !getCell(X:coordX,Y:coordY-1).getIsBoat())
            {
                if(_amount>2){
                    
                    if(isFutureBoadOk)
                    {
                        _playboard.setCellIsBoat(coordX: coordX, coordY: coordY, _isboat: true)
                        setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY),XY:(coordX,coordY))
                        for ind in 0..._amount-3 {
                            _playboard.setCellIsBoat(coordX: coordX ,coordY: coordY-(ind+1), _isboat: true)
                            var newCell:Cell = getCell(X: coordX, Y: coordY-(ind+1))
                            setBoatCell(_amount:_amount,_cell:newCell,XY:(coordX,coordY-(ind+1)))
                        }
                        return (true,"Y-")
                    }
                }
                else
                {
                    _playboard.setCellIsBoat(coordX: coordX, coordY: coordY, _isboat: true)
                    setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY),XY:(coordX,coordY))
                    return (true,"Y-")
                }
                return (true,"Y-")
            }
            else
            {
                return (false,"N")
            }
        case "Y+":
            var isFutureBoadOk:Bool = true
            if (getCell(X:coordX,Y:coordY-1).getIsBoat() && !getCell(X:coordX,Y:coordY+1).getIsBoat())
            {
                if(_amount>2){
                    if(isFutureBoadOk)
                    {
                        _playboard.setCellIsBoat(coordX: coordX, coordY: coordY, _isboat: true)
                        setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY),XY:(coordX,coordY))
                        for ind in 0..._amount-3 {
                            _playboard.setCellIsBoat(coordX: coordX ,coordY: coordY+(ind+1), _isboat: true)
                            var newCell:Cell = getCell(X: coordX, Y: coordY+(ind+1))
                            setBoatCell(_amount:_amount,_cell:newCell,XY:(coordX,coordY+(ind+1)))
                        }
                        return (true,"Y+")
                    }
                }
                else
                {
                    _playboard.setCellIsBoat(coordX: coordX, coordY: coordY, _isboat: true)
                    setBoatCell(_amount:_amount,_cell:getCell(X: coordX, Y: coordY),XY:(coordX,coordY))
                    return (true,"Y+")
                }
                return (true,"Y+")
            }
            else
            {
                return (false,"N")
            }
        default:
            return (false,"N");
        }
        
    }
    
}
