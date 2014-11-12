//
//  KCOJuegoComercialVC.swift
//  Femsa
//
//  Created by KREATIVECO on 11/11/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit

class KCOComercialGameVC: UIViewController {
    
    //properties
    var position = CGPoint(x: 0, y: 0)
    
    //images
    @IBOutlet weak var coke01: UIImageView!
    @IBOutlet weak var coke02: UIImageView!
    @IBOutlet weak var coke03: UIImageView!
    @IBOutlet weak var coke04: UIImageView!
   
    
    //touchesMoved for the logical of game
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        
        //properties
        var touch1 : UITouch! = touches.anyObject() as UITouch
        
        position = touch1.locationInView(self.view)
        
        // Movement of images
        
        if((position.x <= coke01.centerX+7 && position.x >= coke01.centerX-7) && (position.y <= coke01.centerY+14 && position.y >= coke01.centerY-14)){
            if((position.x <= self.view.x+72 && position.x >= self.view.x+62) || (position.y <= self.view.y+159 && position.y >= self.view.y+175)){
                
                coke01.center = CGPoint(x: 72.5, y: 177)
            
            }
            else{
                
                coke01.center = position
                
            }
        }
            
        else if ((position.x <= coke02.centerX+7 && position.x >= coke02.centerX-7) && (position.y <= coke02.centerY+14 && position.y >= coke02.centerY-14)){
            
            if((position.x <= self.view.x+115 && position.x >= self.view.x+105) || (position.y <= self.view.y+246 && position.y >= self.view.y+262)){
                
                coke02.center = CGPoint(x: 115.5, y: 246)
            
            }
            else{
                
                coke02.center = position
            
            }

        }
            
        else if((position.x <= coke03.centerX+8 && position.x >= coke03.centerX-8) && (position.y <= coke03.centerY+22 && position.y >= coke03.centerY-22)){
            //coke03.center = position
            if((position.x <= self.view.x+115.5 && position.x >= self.view.x+105) || (position.y <= self.view.y+299 && position.y >= self.view.y+262)){
                
                coke03.center = CGPoint(x: 136.5, y: 299)
                
            }
            else{
                
                coke03.center = position
                
            }
        }
        
        else if((position.x <= coke04.centerX+8 && position.x >= coke04.centerX-8) && (position.y <= coke04.centerY+26 && position.y >= coke04.centerY-26)){
            //coke04.center = position
            if((position.x <= self.view.x+130.5 && position.x >= self.view.x+125) || (position.y <= self.view.y+363 && position.y >= self.view.y+323)){
                
                coke04.center = CGPoint(x: 130.5, y: 363)
                
            }
            else{
                
                coke04.center = position
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //coke04.center = CGPoint(x: 130.5, y: 363)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool
    {
        return true
    }
    
}