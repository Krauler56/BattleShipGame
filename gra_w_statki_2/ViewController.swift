//
//  ViewController.swift
//  gra_w_statki_2
//
//  Created by Пользователь on 16.12.2017.
//  Copyright © 2017 Пользователь. All rights reserved.
//

import Cocoa
var player1_board : Board  = Board()
var player2_board : Board  = Board()
var isPlayer1Turn:Bool = false
var isPlayer2Turn:Bool = false
var isGameStarted:Bool = false
var randomHelperArray:[[Bool]] = Array(repeating: Array(repeating: false, count: 10), count: 10)
class ViewController: NSViewController {
    
    @IBOutlet weak var informationLabelOutlet: NSTextField!
    @IBOutlet weak var start_button_outlet: NSButton!
    var step :Int=0
    var button_array:[NSButton] = []
    func createButton(playerBoard:Board,index:Int,_self:Bool)->Void
    {
        for i in 0...9{
            for k in 0...9
            {
            
                let button = NSButton(frame:NSRect(origin:CGPoint(x:i*30+index,y:k*30+300),size:CGSize(width:30,height:30)))
               //  button_array.append(button)
                //button.target=Game() as AnyObject
                button.tag=i*10+k
                self.view.addSubview(button)
                if(_self){
                button.action = #selector(Game)
                }
                else
                {
                    button.action = #selector(AttackButton)
                    playerBoard.setCellIs2Player(coordX: i,coordY: k,_is: true)
                }
                playerBoard.setCellButton(coordX: i, coordY: k, __button: button)
                playerBoard.setCellIsBoat(coordX: i, coordY: k,_isboat: false)
                
            }
        }
    }
    func inittializeCells()->Void
    {
        
    }
    @IBAction func start_button(_ sender: Any) {
        self.informationLabelOutlet.stringValue="Set board with 4 cells"
         start_button_outlet.isEnabled=false
        createButton(playerBoard: player1_board,index: 0,_self: true)
        createButton(playerBoard: player2_board,index: 400,_self: false)
        //player1_board.setCellIsBoat(coordX: 5, coordY: 5, _isboat: true)
        print(player1_board.array[1][1].isBoat)
        setBoardCellsRandom(amount: 4)
        setBoardCellsRandom(amount: 3)
        setBoardCellsRandom(amount: 3)
        setBoardCellsRandom(amount: 2)
        setBoardCellsRandom(amount: 2)
        setBoardCellsRandom(amount: 2)
        setBoardCellsRandom(amount: 1)
        setBoardCellsRandom(amount: 1)
        setBoardCellsRandom(amount: 1)
        setBoardCellsRandom(amount: 1)
    }
    
  
    
    func transferTag(_Tag:Int) ->(Int,Int)
    {
        
        var tr:String = String(_Tag)
        if _Tag<10
        {
            tr="0"+tr;
        }
       
        
        return (_Tag/10,_Tag%10);
    }
    var isClickSuccesfull:Bool = true
    var isReadyBoat:Bool = false
    var counter:Int=0
    func setBoardCells(amount:Int,_ button: NSButton)->Void
    {
        let (X,Y) = transferTag(_Tag: button.tag)
        if(!player1_board.getCell(X: X, Y: Y).getIsBoat() && isClickSuccesfull){
        
        
        if(step==0 && !player1_board.isBoatNear(coordX: X, coordY: Y,CoordName: "XY+",_amount: amount,_playboard: player1_board).0){
            player1_board.setCellIsNewCell(coordX: X, coordY: Y, _isNewCell: true)
            player1_board.setCellIsBoat(coordX: X, coordY: Y, _isboat: true)
            player1_board.setBoatCell(_amount: amount, _cell: player1_board.getCell(X: X, Y: Y), XY: (X,Y))
            isClickSuccesfull=false
            if(amount==1)
            {
                isReadyBoat=true
            }
        }
        else if (step==1 && !player1_board.getCell(X: X, Y: Y).getIsBoat() && amount>1)
        {
            boat=player1_board.isBoatNear(coordX: X, coordY: Y,CoordName: "XY",_amount:amount,_playboard: player1_board)
            if(boat.0)
            {
               // player1_board.setCellIsBoat(coordX: X, coordY: Y, _isboat: true)
                //isClickSuccesfull=false
                if(player1_board.isBoatNear(coordX: X, coordY: Y,CoordName: boat.1, _amount: amount,_playboard: player1_board).0)
                {
                    isClickSuccesfull=false
                    isReadyBoat=true
                }
            }
            
        }
        else
        {
            print("Nie udalo sie setBoardCells counter= \(counter),    step = \(step)  amount=\(amount)")
        }
            if(!isClickSuccesfull)
            {
         
               // print("SDSDSSDSDSDSDSDSDDSDSDSDSSDDSD")
                isClickSuccesfull=true
                 step=step+1
            }
            if(isReadyBoat)
            {
                step=0
                counter=counter+1
                isReadyBoat=false
            }
        }
       // isClickSuccesfull=true
      //  isReadyBoat=false
    }
    
    func setBoardCellsRandom(amount:Int)->Void
    {
        var tmpArray:[[Bool]] = Array(repeating: Array(repeating: false, count: 10), count: 10)
        var X:Int!
        var Y:Int!
        var _step:Int=0
        var stepOfRandom:Int=0
        while _step<2 {
            if(_step==0){
                var isOK:Bool = true
                while isOK {
                X = getRandomNumber(n:9)
                Y = getRandomNumber(n:9)
                if !tmpArray[X][Y]
                {
                    print("Generated X = \(X)   Y = \(Y)")
                    tmpArray[X][Y]=true
                    isOK=false
                }
                }
            }
            else if (_step==1 && amount>1)
            {
                switch stepOfRandom
                {
                case 0:
                    X=X+1
                case 1:
                    X=X-2
                case 2:
                    X=X+1
                    Y=Y+1
                case 3:
                    Y=Y-2
                    stepOfRandom=0
                default:
                    print("StepOfRandom Error")
                }
            }
            if(!player2_board.getCell(X: X, Y: Y).getIsBoat() && isClickSuccesfull){
                
                if(_step==0 && !player2_board.isBoatNear(coordX: X, coordY: Y,CoordName: "XY+",_amount: amount,_playboard: player2_board).0){
                    player2_board.setCellIsBoat(coordX: X, coordY: Y, _isboat: true)
                    player2_board.setCellIsNewCell(coordX: X, coordY: Y, _isNewCell: true)
                    player2_board.setBoatCell(_amount: amount, _cell: player2_board.getCell(X: X, Y: Y),XY:(X,Y))
                    isClickSuccesfull=false
                    if(amount==1)
                    {
                        isReadyBoat=true
                        tmpArray.removeAll()
                        _step=_step+1
                    }
                }
                else if (_step==1 && !player2_board.getCell(X: X, Y: Y).getIsBoat() && amount>1)
                {
                    boat=player2_board.isBoatNear(coordX: X, coordY: Y,CoordName: "XY",_amount:amount,_playboard: player2_board)
                    if(boat.0)
                    {
                        // player1_board.setCellIsBoat(coordX: X, coordY: Y, _isboat: true)
                        isClickSuccesfull=false
                        if(player2_board.isBoatNear(coordX: X, coordY: Y,CoordName: boat.1, _amount: amount,_playboard: player2_board).0)
                        {
                          //  player2_board.setCellIsNewCell(coordX: tmpXY.0, coordY: tmpXY.1, _isNewCell: false)
                            
                            isClickSuccesfull=false
                            isReadyBoat=true
                            stepOfRandom=0
                            
                        }
                    }
                    else
                    {
                        stepOfRandom=stepOfRandom+1
                    }
                    
                }
                else
                {
                    print("Nie udalo sie setBoardCellsRandom counter= \(counter),    step = \(step)")
                }
                if(!isClickSuccesfull)
                {
                    isClickSuccesfull=true
                 //   print("STEPA STEPA \(_step)")
                    _step=_step+1
                }
                if(isReadyBoat)
                {
                   // _step=0
                    //counter=counter+1
                    isReadyBoat=false
                }
            }
        }
    }
    @IBOutlet weak var buttons: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var boat:(Bool,String)!
    var counterInGame:Int = 0
    @objc func Game(sender:NSButton)->Void {
        switch counter {
        case 0:
            setBoardCells(amount: 4, sender)
            counterInGame=counterInGame+1
            if(counterInGame==2){
            self.informationLabelOutlet.stringValue="Set first boad with 3 cells"
                counterInGame=0
            }
        case 1:
            setBoardCells(amount: 3, sender)
            counterInGame=counterInGame+1
            if(counterInGame==2){
                self.informationLabelOutlet.stringValue="Set second boad with 3 cells"
                counterInGame=0
            }
        case 2:
            setBoardCells(amount: 3, sender)
            counterInGame=counterInGame+1
            if(counterInGame==2){
                self.informationLabelOutlet.stringValue="Set first boad with 2 cells"
                counterInGame=0
            }
        case 3:
            setBoardCells(amount: 2, sender)
            counterInGame=counterInGame+1
            if(counterInGame==2){
                self.informationLabelOutlet.stringValue="Set second boad with 2 cells"
                counterInGame=0
            }
        case 4:
            setBoardCells(amount: 2, sender)
            counterInGame=counterInGame+1
            if(counterInGame==2){
                self.informationLabelOutlet.stringValue="Set third boad with 2 cells"
                counterInGame=0
            }
        case 5:
            setBoardCells(amount: 2, sender)
            counterInGame=counterInGame+1
            if(counterInGame==2){
              self.informationLabelOutlet.stringValue="Set first boad with 1 cell"
                counterInGame=0
            }
        case 6:
            setBoardCells(amount: 1, sender)
            
                self.informationLabelOutlet.stringValue="Set second boad with 1 cell"
            
        case 7:
            setBoardCells(amount: 1, sender)
            
                self.informationLabelOutlet.stringValue="Set third bord with 1 cell"
                counterInGame=0
        case 8:
            setBoardCells(amount: 1, sender)
                self.informationLabelOutlet.stringValue="Set fourth boad with 1 cell"
            
        case 9:
            setBoardCells(amount: 1, sender)
            self.informationLabelOutlet.stringValue="Game started, your turn!!!!!!!!!!!!"
            isGameStarted=true
        default:
            print("Blad")
        }
       // setBoardCells(amount: 2, sender)
    }
    var randomX:Int = 0
    var randomY:Int = 0
    
    func getRandomNumbers()->Void {
        var isOK:Bool = true
        while isOK {
            randomX = getRandomNumber(n: 10)
            randomY = getRandomNumber(n: 10)
            if (!randomHelperArray[randomX][randomY]){
                randomHelperArray[randomX][randomY]=true
                isOK=false
            }
        }
    }
    func DisableAllButtons()->Void
    {
        for i in 0...9
        {
            for k in 0...9
            {
                player1_board.getCell(X: i, Y: k).button.isEnabled=false
                player2_board.getCell(X: i, Y: k).button.isEnabled=false
            }
        }
    }
    func isGameOver()->(Bool,String)
    {
       if (player1_board.isAllCellsAreDead())
       {
        DisableAllButtons()
        start_button_outlet.isEnabled=true
        return (true,"Opponent WIN")
        }
        if (player2_board.isAllCellsAreDead())
        {
            DisableAllButtons()
            start_button_outlet.isEnabled=true
             return (true,"YOU WIN")
        }
        return (false,"N")
    }
    @objc func AttackButton(sender:NSButton)->Void {
        
        let (X,Y) = transferTag(_Tag: sender.tag)
        if(!playerHelperArray[X][Y] && isGameStarted)
        {
            if(!player2_board.attackCell(coordX: X,coordY: Y)){
            print("Attack Player board 1 : X \(X) , Y: \(Y)")
            playerHelperArray[X][Y]=true
            var isOK:Bool = true
            if (isRandom){
            getRandomNumbers()
            AttackByRival()
            }
            else
            {
                print("ATTACK HERE step = \(attack_step)")
                AttackByRival()
            }
        }
        
        }
        var isGO:(Bool,String) = isGameOver()
        if(isGO.0)
        {
          
            informationLabelOutlet.stringValue=isGO.1
        }
        else
        {
        getInfoToLabel()
        }
    }
    var attack_step:Int  = 0
    var isRandom:Bool = true
    var isHitByFirst:Bool = false
    var CoordNameRandom:String = ""
    var succedAtacck:Bool = false
    func AttackByRival()->Void
    {
        
        switch attack_step
        {
        case 0:
            if (randomX<10 && randomX >= 0 && randomY<10 && randomY>=0) {
            let attack = player1_board.attackCell(coordX: randomX, coordY: randomY)
            print("Attack Player board 2 : X \(randomX) , Y: \(randomY) attack step = \(attack_step)")
            randomHelperArray[randomX][randomY]=true
            if(attack)
            {
                isRandom=false
                attack_step=attack_step+1
                AttackByRival()
            }
            }
        case 1:
            isRandom=false
            randomX=randomX+1
            if (randomX<10 && randomX >= 0 && randomY<10 && randomY>=0 && !randomHelperArray[randomX][randomY]) {
            let attack = player1_board.attackCell(coordX: randomX, coordY: randomY)
                print("Attack Player board 2 : X \(randomX) , Y: \(randomY) attack step = \(attack_step)")
            randomHelperArray[randomX][randomY]=true
            if(!attack)
            {
            attack_step=attack_step+1
            }
            else
            {
                searchAttackByRival(coords: [(randomX+1,randomY),(randomX+2,randomY)])
                attack_step=attack_step+1
            }
            }
            else
            {
                attack_step=attack_step+1
                AttackByRival()
            }
        case 2:
            isRandom=false
            randomX=randomX-2
            if (randomX<10 && randomX >= 0 && randomY<10 && randomY>=0 && !randomHelperArray[randomX][randomY]) {
            let attack = player1_board.attackCell(coordX: randomX, coordY: randomY)
                print("Attack Player board 2 : X \(randomX) , Y: \(randomY) attack step = \(attack_step)")
            randomHelperArray[randomX][randomY]=true
            if(!attack)
            {
                attack_step=attack_step+1
            }
            else
            {
                searchAttackByRival(coords: [(randomX-1,randomY),(randomX-2,randomY)])
                attack_step=attack_step+1
            }
            }
            else
            {
                attack_step=attack_step+1
                AttackByRival()
            }
        case 3:
            isRandom=false
            randomX=randomX+1
            randomY=randomY+1
             if (randomX<10 && randomX >= 0 && randomY<10 && randomY>=0 && !randomHelperArray[randomX][randomY]) {
            let attack = player1_board.attackCell(coordX: randomX, coordY: randomY)
                print("Attack Player board 2 : X \(randomX) , Y: \(randomY) attack step = \(attack_step)")
            randomHelperArray[randomX][randomY]=true
            if(!attack)
            {
                attack_step=attack_step+1
            }
            else
            {
                searchAttackByRival(coords: [(randomX,randomY+1),(randomX,randomY+2)])
                attack_step=attack_step+1
            }
            }
             else
             {
                attack_step=attack_step+1
                AttackByRival()
            }
            
        case 4:
            isRandom=false
            randomY=randomY-2
            if (randomX<10 && randomX >= 0 && randomY<10 && randomY>=0 && !randomHelperArray[randomX][randomY]) {
            let attack = player1_board.attackCell(coordX: randomX, coordY: randomY)
                print("Attack Player board 2 : X \(randomX) , Y: \(randomY) attack step = \(attack_step)")
            randomHelperArray[randomX][randomY]=true
            if(!attack)
            {
                attack_step=0
                isRandom=true
            }
            else
            {
                searchAttackByRival(coords: [(randomX,randomY-1),(randomX,randomY-2)])
                attack_step=0
                isRandom=true
            }
            }
            else
            {
                attack_step=0
                isRandom=true
                getRandomNumbers()
                AttackByRival()
            }
        default:
            print("Attack error")
        }
        
    }
    var attackCoords:[(Int,Int)]!
    var isSearchAttackTurnOn:Bool = false
    func searchAttackByRival(coords:[(Int,Int)])->Void
    {
        attackCoords=coords
        for ind in attackCoords {
            if(ind.0<10 && ind.0 >= 0 && ind.1<10 && ind.1>=0)
            {
            randomHelperArray[ind.0][ind.1]=true
            print("Attack Player board 2 : X \(ind.0) , Y: \(ind.1) attack step = \(attack_step)")
            if(!player1_board.attackCell(coordX: ind.0, coordY: ind.1))
            {
                break
            }
            }
            
        }
    }
    func getRandomNumber(n:Int)->Int
    {
        return Int(arc4random_uniform(UInt32(n)))
    }
    var playerHelperArray:[[Bool]] = Array(repeating: Array(repeating: false, count: 10), count: 10)
    func getRandomPlayer()->Void
    {
     
        var randomX:Int = getRandomNumber(n: 9)
        var randomY:Int = getRandomNumber(n: 9)
        player2_board.setCellIsBoat(coordX: randomX, coordY: randomY, _isboat: true)
    }
    func getInfoToLabel()->Void
    {
        var info:[String]=["Your ships \n"]+player1_board.getInfoAboutBoats()+["Opponent's ships \n"]+player2_board.getInfoAboutBoats()
        var string:String = ""
        for ind in info
        {
            string.append(ind)
        }
        informationLabelOutlet.stringValue=string
    }
    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

