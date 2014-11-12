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
      
        var touch : UITouch! = touches.anyObject() as UITouch
        position = touch.locationInView(self.view)
        coke02.center = position
        //coke01.center = position

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
