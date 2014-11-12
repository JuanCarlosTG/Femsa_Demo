//
//  KCOJuegoComercialVC.swift
//  Femsa
//
//  Created by KREATIVECO on 11/11/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit

class KCOJuegoComercialVC: UIViewController {
    
    var position = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var coke01: UIImageView!
    @IBOutlet weak var coke02: UIImageView!
    @IBOutlet weak var coke03: UIImageView!
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
      
        var touch1 : UITouch! = touches.anyObject() as UITouch
        position = touch1.locationInView(self.view)
        if((position.x <= coke01.centerX+7 && position.x >= coke01.centerX-7) && (position.y <= coke01.centerY+14 && position.y >= coke01.centerY-14)){
            coke01.center = position
        }
        
        else if ((position.x <= coke02.centerX+7 && position.x >= coke02.centerX-7) && (position.y <= coke02.centerY+14 && position.y >= coke02.centerY-14)){
            coke02.center = position
        }
        
        else if((position.x <= coke03.centerX+8 && position.x >= coke03.centerX-8) && (position.y <= coke03.centerY+22 && position.y >= coke03.centerY-22)){
            coke03.center = position
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //coke01.center = CGPoint(x: 285, y: 263)
        //coke02.center = CGPoint(x: 250, y: 263)
        //coke03.center = CGPoint(x: 215, y: 246)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
