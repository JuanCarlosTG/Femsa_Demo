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
    @IBOutlet weak var posterCoke: UIImageView!
   
    
    //touchesMoved for the logical of game
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        
        //properties
        var touch : UITouch! = touches.anyObject() as UITouch
        
        position = touch.locationInView(self.view)
        
        // Movement of images
        
        if((position.x <= coke01.centerX+7 && position.x >= coke01.centerX-7) && (position.y <= coke01.centerY+14 && position.y >= coke01.centerY-14)){
            
            //validate position for coke01 and current touch
            if((position.x <= self.view.x+80 && position.x >= self.view.x+72) && (position.y <= self.view.y+177 && position.y >= self.view.y+159)){
                
                coke01.center = CGPoint(x: 72.5, y: 177)
            
            }
            else{
                
                coke01.center = position
                
            }
        }
            
        else if ((position.x <= coke02.centerX+7 && position.x >= coke02.centerX-7) && (position.y <= coke02.centerY+14 && position.y >= coke02.centerY-14)){
            
            //validate position for coke02 and current touch
            if((position.x <= self.view.x+115 && position.x >= self.view.x+105) && (position.y <= self.view.y+262 && position.y >= self.view.y+246)){
                
                coke02.center = CGPoint(x: 115.5, y: 246)
            
            }
            else{
                
                coke02.center = position
            
            }

        }
            
        else if((position.x <= coke03.centerX+8 && position.x >= coke03.centerX-8) && (position.y <= coke03.centerY+22 && position.y >= coke03.centerY-22)){
            
            //validate position for coke03 and current touch
            if((position.x <= self.view.x+115.5 && position.x >= self.view.x+105) && (position.y <= self.view.y+299 && position.y >= self.view.y+262)){
                
                coke03.center = CGPoint(x: 136.5, y: 299)
                
            }
            else{
                
                coke03.center = position
                
            }
        }
        
        else if((position.x <= coke04.centerX+8 && position.x >= coke04.centerX-8) && (position.y <= coke04.centerY+26 && position.y >= coke04.centerY-26)){
            
            //validate position for coke04 and current touch
            if((position.x <= self.view.x+130.5 && position.x >= self.view.x+120) && (position.y <= self.view.y+363 && position.y >= self.view.y+323)){
                
                coke04.center = CGPoint(x: 130.5, y: 363)
                
            }
            else{
                
                coke04.center = position
                
            }
        }
        
        else if((position.x <= posterCoke.centerX+100 && position.x >= posterCoke.centerX-100) && (position.y <= posterCoke.centerY+100 && position.y >= posterCoke.centerY-100)){
            
            //validate position for poster and current touch
            if((position.x <= self.view.x+300.5 && position.x >= self.view.x+270) && (position.y <= self.view.y+223 && position.y >= self.view.y+150)){
                
                posterCoke.center = CGPoint(x: 250.5, y: 223)
                
            }
            else{
                
                posterCoke.center = position
                
            }

        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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