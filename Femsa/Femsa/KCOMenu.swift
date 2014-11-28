//
//  KCOMenu.swift
//  Femsa
//
//  Created by KREATIVECO on 29/10/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit

class KCOMenu: UIViewController {
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func displayAlert(sender: AnyObject)
    {
        var alert = UIAlertController(title: "Notificación Del Clima", message: "La temperatura es : 28º" , preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
}
