//
//  ViewController.swift
//  gra_w_statki_2
//
//  Created by Пользователь on 16.12.2017.
//  Copyright © 2017 Пользователь. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var step :Int=0
    @IBOutlet  var button0x0: NSButton!
    @IBOutlet  var button0x1: NSButton!
    @IBOutlet  var button0x2: NSButton!
    @IBOutlet  var button0x3: NSButton!
    @IBOutlet  var button0x4: NSButton!
    @IBOutlet var button0x5: NSButton!
    @IBOutlet var button0x6: NSButton!
    @IBOutlet var button0x7: NSButton!
    @IBOutlet var button0x8: NSButton!
    @IBOutlet var button0x9: NSButton!
    @IBOutlet var button1x0: NSButton!
    @IBOutlet var button1x1: NSButton!
    @IBOutlet var button1x2: NSButton!
    @IBOutlet var button1x3: NSButton!
    @IBOutlet var button1x4: NSButton!
    @IBOutlet var button1x5: NSButton!
    @IBOutlet var button1x6: NSButton!
    @IBOutlet var button1x7: NSButton!
    @IBOutlet var button1x8: NSButton!
    @IBOutlet var button1x9: NSButton!
    @IBOutlet var button2x0: NSButton!
    @IBOutlet var button2x1: NSButton!
    @IBOutlet var button2x2: NSButton!
    @IBOutlet var button2x3: NSButton!
    @IBOutlet var button2x4: NSButton!
    @IBOutlet var button2x5: NSButton!
    @IBOutlet var button2x6: NSButton!
    @IBOutlet var button2x7: NSButton!
    @IBOutlet var button2x8: NSButton!
    @IBOutlet var button2x9: NSButton!
    @IBOutlet var button3x0: NSButton!
    @IBOutlet var button3x1: NSButton!
    @IBOutlet var button3x2: NSButton!
    @IBOutlet var button3x3: NSButton!
    @IBOutlet var button3x4: NSButton!
    @IBOutlet var button3x5: NSButton!
    @IBOutlet var button3x6: NSButton!
    @IBOutlet var button3x7: NSButton!
    @IBOutlet var button3x8: NSButton!
    @IBOutlet var button3x9: NSButton!
    @IBOutlet var button4x0: NSButton!
    @IBOutlet var button4x1: NSButton!
    @IBOutlet var button4x2: NSButton!
    @IBOutlet var button4x3: NSButton!
    @IBOutlet var button4x4: NSButton!
    @IBOutlet var button4x5: NSButton!
    @IBOutlet var button4x6: NSButton!
    @IBOutlet var button4x7: NSButton!
    @IBOutlet var button4x8: NSButton!
    @IBOutlet var button4x9: NSButton!
    @IBOutlet var button5x0: NSButton!
    @IBOutlet var button5x1: NSButton!
    @IBOutlet var button5x2: NSButton!
    @IBOutlet var button5x3: NSButton!
    @IBOutlet var button5x4: NSButton!
    @IBOutlet var button5x5: NSButton!
    @IBOutlet var button5x6: NSButton!
    @IBOutlet var button5x7: NSButton!
    @IBOutlet var button5x8: NSButton!
    @IBOutlet var button5x9: NSButton!
    @IBOutlet var button6x0: NSButton!
    @IBOutlet var button6x1: NSButton!
    @IBOutlet var button6x2: NSButton!
    @IBOutlet var button6x3: NSButton!
    @IBOutlet var button6x4: NSButton!
    @IBOutlet var button6x5: NSButton!
    @IBOutlet var button6x6: NSButton!
    @IBOutlet var button6x7: NSButton!
    @IBOutlet var button6x8: NSButton!
    @IBOutlet var button6x9: NSButton!
    @IBOutlet var button7x0: NSButton!
    @IBOutlet var button7x1: NSButton!
    @IBOutlet var button7x2: NSButton!
    @IBOutlet var button7x3: NSButton!
    @IBOutlet var button7x4: NSButton!
    @IBOutlet var button7x5: NSButton!
    @IBOutlet var button7x6: NSButton!
    @IBOutlet var button7x7: NSButton!
    @IBOutlet var button7x8: NSButton!
    @IBOutlet var button7x9: NSButton!
    @IBOutlet var button8x0: NSButton!
    @IBOutlet var button8x1: NSButton!
    @IBOutlet var button8x2: NSButton!
    @IBOutlet var button8x3: NSButton!
    @IBOutlet var button8x4: NSButton!
    @IBOutlet var button8x5: NSButton!
    @IBOutlet var button8x6: NSButton!
    @IBOutlet var button8x7: NSButton!
    @IBOutlet var button8x8: NSButton!
    @IBOutlet var button8x9: NSButton!
    @IBOutlet var button9x0: NSButton!
    @IBOutlet var button9x1: NSButton!
    @IBOutlet var button9x2: NSButton!
    @IBOutlet var button9x3: NSButton!
    @IBOutlet var button9x4: NSButton!
    @IBOutlet var button9x5: NSButton!
    @IBOutlet var button9x6: NSButton!
    @IBOutlet var button9x7: NSButton!
    @IBOutlet var button9x8: NSButton!
    @IBOutlet var button9x9: NSButton!
    let player1_board : Board  = Board()
    
    func inittializeCells()->Void
    {
        
    }
    @IBAction func start_button(_ sender: Any) {
        player1_board.setCellButton(coordX: 0, coordY: 0, __button: button0x0)
        player1_board.setCellButton(coordX: 0, coordY: 1, __button: button0x1)
        player1_board.setCellButton(coordX: 0, coordY: 2, __button: button0x2)
        player1_board.setCellButton(coordX: 0, coordY: 3, __button: button0x3)
        player1_board.setCellButton(coordX: 0, coordY: 4, __button: button0x4)
        player1_board.setCellButton(coordX: 0, coordY: 5, __button: button0x5)
        player1_board.setCellButton(coordX: 0, coordY: 6, __button: button0x6)
        player1_board.setCellButton(coordX: 0, coordY: 7, __button: button0x7)
        player1_board.setCellButton(coordX: 0, coordY: 8, __button: button0x8)
        player1_board.setCellButton(coordX: 0, coordY: 9, __button: button0x9)
        player1_board.setCellButton(coordX: 1, coordY: 0, __button: button1x0)
        player1_board.setCellButton(coordX: 1, coordY: 1, __button: button1x1)
        player1_board.setCellButton(coordX: 1, coordY: 2, __button: button1x2)
        player1_board.setCellButton(coordX: 1, coordY: 3, __button: button1x3)
        player1_board.setCellButton(coordX: 1, coordY: 4, __button: button1x4)
        player1_board.setCellButton(coordX: 1, coordY: 5, __button: button1x5)
        player1_board.setCellButton(coordX: 1, coordY: 6, __button: button1x6)
        player1_board.setCellButton(coordX: 1, coordY: 7, __button: button1x7)
        player1_board.setCellButton(coordX: 1, coordY: 8, __button: button1x8)
        player1_board.setCellButton(coordX: 1, coordY: 9, __button: button1x9)
        player1_board.setCellButton(coordX: 2, coordY: 0, __button: button2x0)
        player1_board.setCellButton(coordX: 2, coordY: 1, __button: button2x1)
        player1_board.setCellButton(coordX: 2, coordY: 2, __button: button2x2)
        player1_board.setCellButton(coordX: 2, coordY: 3, __button: button2x3)
        player1_board.setCellButton(coordX: 2, coordY: 4, __button: button2x4)
        player1_board.setCellButton(coordX: 2, coordY: 5, __button: button2x5)
        player1_board.setCellButton(coordX: 2, coordY: 6, __button: button2x6)
        player1_board.setCellButton(coordX: 2, coordY: 7, __button: button2x7)
        player1_board.setCellButton(coordX: 2, coordY: 8, __button: button2x8)
        player1_board.setCellButton(coordX: 2, coordY: 9, __button: button2x9)
        player1_board.setCellButton(coordX: 3, coordY: 0, __button: button3x0)
        player1_board.setCellButton(coordX: 3, coordY: 1, __button: button3x1)
        player1_board.setCellButton(coordX: 3, coordY: 2, __button: button3x2)
        player1_board.setCellButton(coordX: 3, coordY: 3, __button: button3x3)
        player1_board.setCellButton(coordX: 3, coordY: 4, __button: button3x4)
        player1_board.setCellButton(coordX: 3, coordY: 5, __button: button3x5)
        player1_board.setCellButton(coordX: 3, coordY: 6, __button: button3x6)
        player1_board.setCellButton(coordX: 3, coordY: 7, __button: button3x7)
        player1_board.setCellButton(coordX: 3, coordY: 8, __button: button3x8)
        player1_board.setCellButton(coordX: 3, coordY: 9, __button: button3x9)
        player1_board.setCellButton(coordX: 4, coordY: 0, __button: button4x0)
        player1_board.setCellButton(coordX: 4, coordY: 1, __button: button4x1)
        player1_board.setCellButton(coordX: 4, coordY: 2, __button: button4x2)
        player1_board.setCellButton(coordX: 4, coordY: 3, __button: button4x3)
        player1_board.setCellButton(coordX: 4, coordY: 4, __button: button4x4)
        player1_board.setCellButton(coordX: 4, coordY: 5, __button: button4x5)
        player1_board.setCellButton(coordX: 4, coordY: 6, __button: button4x6)
        player1_board.setCellButton(coordX: 4, coordY: 7, __button: button4x7)
        player1_board.setCellButton(coordX: 4, coordY: 8, __button: button4x8)
        player1_board.setCellButton(coordX: 4, coordY: 9, __button: button4x9)
        player1_board.setCellButton(coordX: 5, coordY: 0, __button: button5x0)
        player1_board.setCellButton(coordX: 5, coordY: 1, __button: button5x1)
        player1_board.setCellButton(coordX: 5, coordY: 2, __button: button5x2)
        player1_board.setCellButton(coordX: 5, coordY: 3, __button: button5x3)
        player1_board.setCellButton(coordX: 5, coordY: 4, __button: button5x4)
        player1_board.setCellButton(coordX: 5, coordY: 5, __button: button5x5)
        player1_board.setCellButton(coordX: 5, coordY: 6, __button: button5x6)
        player1_board.setCellButton(coordX: 5, coordY: 7, __button: button5x7)
        player1_board.setCellButton(coordX: 5, coordY: 8, __button: button5x8)
        player1_board.setCellButton(coordX: 5, coordY: 9, __button: button5x9)
        player1_board.setCellButton(coordX: 6, coordY: 0, __button: button6x0)
        player1_board.setCellButton(coordX: 6, coordY: 1, __button: button6x1)
        player1_board.setCellButton(coordX: 6, coordY: 2, __button: button6x2)
        player1_board.setCellButton(coordX: 6, coordY: 3, __button: button6x3)
        player1_board.setCellButton(coordX: 6, coordY: 4, __button: button6x4)
        player1_board.setCellButton(coordX: 6, coordY: 5, __button: button6x5)
        player1_board.setCellButton(coordX: 6, coordY: 6, __button: button6x6)
        player1_board.setCellButton(coordX: 6, coordY: 7, __button: button6x7)
        player1_board.setCellButton(coordX: 6, coordY: 8, __button: button6x8)
        player1_board.setCellButton(coordX: 6, coordY: 9, __button: button6x9)
        player1_board.setCellButton(coordX: 7, coordY: 0, __button: button7x0)
        player1_board.setCellButton(coordX: 7, coordY: 1, __button: button7x1)
        player1_board.setCellButton(coordX: 7, coordY: 2, __button: button7x2)
        player1_board.setCellButton(coordX: 7, coordY: 3, __button: button7x3)
        player1_board.setCellButton(coordX: 7, coordY: 4, __button: button7x4)
        player1_board.setCellButton(coordX: 7, coordY: 5, __button: button7x5)
        player1_board.setCellButton(coordX: 7, coordY: 6, __button: button7x6)
        player1_board.setCellButton(coordX: 7, coordY: 7, __button: button7x7)
        player1_board.setCellButton(coordX: 7, coordY: 8, __button: button7x8)
        player1_board.setCellButton(coordX: 7, coordY: 9, __button: button7x9)
        player1_board.setCellButton(coordX: 8, coordY: 0, __button: button8x0)
        player1_board.setCellButton(coordX: 8, coordY: 1, __button: button8x1)
        player1_board.setCellButton(coordX: 8, coordY: 2, __button: button8x2)
        player1_board.setCellButton(coordX: 8, coordY: 3, __button: button8x3)
        player1_board.setCellButton(coordX: 8, coordY: 4, __button: button8x4)
        player1_board.setCellButton(coordX: 8, coordY: 5, __button: button8x5)
        player1_board.setCellButton(coordX: 8, coordY: 6, __button: button8x6)
        player1_board.setCellButton(coordX: 8, coordY: 7, __button: button8x7)
        player1_board.setCellButton(coordX: 8, coordY: 8, __button: button8x8)
        player1_board.setCellButton(coordX: 8, coordY: 9, __button: button8x9)
        player1_board.setCellButton(coordX: 9, coordY: 0, __button: button9x0)
        player1_board.setCellButton(coordX: 9, coordY: 1, __button: button9x1)
        player1_board.setCellButton(coordX: 9, coordY: 2, __button: button9x2)
        player1_board.setCellButton(coordX: 9, coordY: 3, __button: button9x3)
        player1_board.setCellButton(coordX: 9, coordY: 4, __button: button9x4)
        player1_board.setCellButton(coordX: 9, coordY: 5, __button: button9x5)
        player1_board.setCellButton(coordX: 9, coordY: 6, __button: button9x6)
        player1_board.setCellButton(coordX: 9, coordY: 7, __button: button9x7)
        player1_board.setCellButton(coordX: 9, coordY: 8, __button: button9x8)
        player1_board.setCellButton(coordX: 9, coordY: 9, __button: button9x9)
        for i in 0...9
        {
            for k in 0...9
            {
                player1_board.setCellIsBoat(coordX: i, coordY: k,_isboat: false)
            }
        }
        
        
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

    @IBOutlet weak var buttons: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var boat:(Bool,String)!
    @IBAction func ddd(_ sender: NSButton) {
        let (X,Y) = transferTag(_Tag: sender.tag)
        
        if(step==0){
            player1_board.setCellIsBoat(coordX: X, coordY: Y, _isboat: true)
            step=step+1
            break
            }
        else if (step==1)
        {
                boat=player1_board.isBoatNear(coordX: X, coordY: Y,CoordName: "XY")
            if(boat.0)
            {
                player1_board.setCellIsBoat(coordX: X, coordY: Y, _isboat: true)
                step=step+1
                break
            }
        
        }
        if(step==2)
        {
            if(step==2 && player1_board.isBoatNear(coordX: X, coordY: Y,CoordName: boat.1).0)
            {
                player1_board.setCellIsBoat(coordX: X, coordY: Y, _isboat: true)
                step=step+1
                break
            }
        }
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

