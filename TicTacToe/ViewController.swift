//
//  ViewController.swift
//  TicTacToe
//
//  Created by Jaewon Kim on 2017-10-27.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - buttons
    @IBOutlet weak var tile1: UIButton!
    @IBOutlet weak var tile2: UIButton!
    @IBOutlet weak var tile3: UIButton!
    @IBOutlet weak var tile4: UIButton!
    @IBOutlet weak var tile5: UIButton!
    @IBOutlet weak var tile6: UIButton!
    @IBOutlet weak var tile7: UIButton!
    @IBOutlet weak var tile8: UIButton!
    @IBOutlet weak var tile9: UIButton!
    
    var tile01:Tile = Tile()
    var tile02:Tile = Tile()
    var tile03:Tile = Tile()
    var tile04:Tile = Tile()
    var tile05:Tile = Tile()
    var tile06:Tile = Tile()
    var tile07:Tile = Tile()
    var tile08:Tile = Tile()
    var tile09:Tile = Tile()
    
    var playerTurn:Int = 1
    var gameOver:Bool = false
    
    var done:Bool = false
    
    
    var gameBoard: [[Int]] = [[-1,-1,-1],[-1,-1,-1],[-1,-1,-1]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tile01.tileObject = tile1
        tile02.tileObject = tile2
        tile03.tileObject = tile3
        tile04.tileObject = tile4
        tile05.tileObject = tile5
        tile06.tileObject = tile6
        tile07.tileObject = tile7
        tile08.tileObject = tile8
        tile09.tileObject = tile9
        
        
    }
    
    @IBAction func tile1(_ sender: UIButton) {
        if gameOver == false {
            if playerMove(tile: tile01) {
                
                if tile01.sign == "X"{
                    
                    gameBoard[0][0] = 0
                    
                } else if tile01.sign == "O"{
                    
                    gameBoard[0][0] = 1
                    
                }
                
            }
            gameCheck()
            
        }
    }
    @IBAction func tile2(_ sender: UIButton) {
        if gameOver == false {
        if playerMove(tile: tile02) {
            
            if tile02.sign == "X"{
                
                gameBoard[0][1] = 0
                
            } else if tile02.sign == "O"{
                
                gameBoard[0][1] = 1
                
            }
        }
            gameCheck()
        }
        
    }
    @IBAction func tile3(_ sender: UIButton) {
        if gameOver == false{
        if playerMove(tile: tile03) {
            
            if tile03.sign == "X"{
                
                gameBoard[0][2] = 0
                
            } else if tile03.sign == "O"{
                
                gameBoard[0][2] = 1
                
            }
        }
            gameCheck()
        }
        
    }
    @IBAction func tile4(_ sender: UIButton) {
        if gameOver == false {
        if playerMove(tile: tile04) {
            
            if tile04.sign == "X"{
                
                gameBoard[1][0] = 0
                
            } else if tile04.sign == "O"{
                
                gameBoard[1][0] = 1
                
            }
        }
            gameCheck()
        }
        
    }
    @IBAction func tile5(_ sender: UIButton) {
        if gameOver == false {
        if playerMove(tile: tile05) {
            
            if tile05.sign == "X"{
                
                gameBoard[1][1] = 0
                
            } else if tile05.sign == "O"{
                
                gameBoard[1][1] = 1
                
            }
        }
            gameCheck()
        }
        
    }
    @IBAction func tile6(_ sender: UIButton) {
        if gameOver == false {
        if playerMove(tile: tile06) {
            
            if tile06.sign == "X"{
                
                gameBoard[1][2] = 0
                
            } else if tile06.sign == "O"{
                
                gameBoard[1][2] = 1
                
            }
        }
            gameCheck()
        }
        
    }
    @IBAction func tile7(_ sender: UIButton) {
        if gameOver == false {
        if playerMove(tile: tile07) {
            
            if tile07.sign == "X"{
                
                gameBoard[2][0] = 0
                
            } else if tile07.sign == "O"{
                
                gameBoard[2][0] = 1
                
            }
        }
            gameCheck()
        }
        
    }
    @IBAction func tile8(_ sender: UIButton) {
        if gameOver == false {
        if playerMove(tile: tile08){
            
            if tile08.sign == "X"{
                
                gameBoard[2][1] = 0
                
            } else if tile08.sign == "O"{
                
                gameBoard[2][1] = 1
                
            }
        }
        gameCheck()
    }
        
    }
    @IBAction func tile9(_ sender: UIButton) {
        if gameOver == false {
        if playerMove(tile: tile09) {
            
            if tile09.sign == "X"{
                
                gameBoard[2][2] = 0
                
            } else if tile09.sign == "O"{
                
                gameBoard[2][2] = 1
                
            }
                gameCheck()
            }
        }
        done = true
        
        if done {
            for var x in 0..<gameBoard.count {
                var line = ""
                for var y in 0..<gameBoard[x].count {
                    line += String(gameBoard[x][y])
                    line += " "
                }
                print(line)
            }
        }
        gameCheck()
        
    }
    
    func playerMove(tile:Tile) -> Bool{
        var workDone:Bool = false
        if playerTurn == 1 && !tile.isTaken {
            tile.tileObject.setTitle("X", for: .normal)
            playerTurn = 2
            print(playerTurn)
            tile.isTaken = true
            tile.sign = "X"
            workDone = true
        } else if playerTurn == 2 && !tile.isTaken{
            tile.tileObject.setTitle("O", for: .normal)
            playerTurn = 1
            print(playerTurn)
            tile.isTaken = true
            tile.sign = "O"
            workDone = true
        }
        
        return workDone
    }
    
    func gameCheck() {
        
        for gameBoardNumbers in gameBoard {
            
            if gameBoardNumbers == [0,0,0] {
                
                tile01.tileObject.setTitle("p1 win", for: .normal)
                
                gameOver = true
                
            } else if gameBoardNumbers == [1,1,1] {
                
                tile01.tileObject.setTitle("p2 win", for: .normal)
                
                gameOver = true
                
            }
            
        }
        
        if gameBoard[0][0] == 0 && gameBoard[1][0] == 0 && gameBoard[2][0] == 0 {
            
            tile01.tileObject.setTitle("p1 win", for: .normal)
            
            gameOver = true
            
        } else if gameBoard[0][0] == 1 && gameBoard[1][0] == 1 && gameBoard[2][0] == 1 {
            
            tile01.tileObject.setTitle("p2 win", for: .normal)
            
            gameOver = true
            
        } else if gameBoard[0][1] == 0 && gameBoard[1][1] == 0 && gameBoard[2][1] == 0 {
            
            tile01.tileObject.setTitle("p1 win", for: .normal)
            
            gameOver = true
            
        } else if gameBoard[0][1] == 1 && gameBoard[1][1] == 1 && gameBoard[2][1] == 1{
            
            tile01.tileObject.setTitle("p2 win", for: .normal)
            
            gameOver = true
            
        } else if gameBoard[0][2] == 0 && gameBoard[1][2] == 0 && gameBoard[2][2] == 0 {
            
            tile01.tileObject.setTitle("p1 win", for: .normal)
            
            gameOver = true
            
        } else if gameBoard[0][2] == 1 && gameBoard[1][2] == 1 && gameBoard[2][2] == 1 {
            
            tile01.tileObject.setTitle("p2 win", for: .normal)
            
            gameOver = true
            
        }
    }
}

