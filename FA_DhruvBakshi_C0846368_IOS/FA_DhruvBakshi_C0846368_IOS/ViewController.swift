//
//  ViewController.swift
//  FA_DhruvBakshi_C0846368_IOS
//
//  Created by Dhruv Bakshi on 2022-05-27.
//

import UIKit

class ViewController: UIViewController {

    
    
    var activePlayer  = 1 //Cross
    var gameState = [0,0,0,0,0,0,0,0,0]
    
    @IBAction func actionBtn(_ sender: AnyObject)
    {
        if (gameState[sender.tag-1] == 0 )
        {
            gameState[sender.tag-1] = activePlayer
            
           if (activePlayer == 1)
            {
               sender.setImage(UIImage(named:"cross.jpg" ), for: UIControl.State())
               activePlayer = 2
             }
           else
           {
               sender.setImage(UIImage(named: "zero.jpg"), for: UIControl.State())
               activePlayer = 1
            }
         }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

