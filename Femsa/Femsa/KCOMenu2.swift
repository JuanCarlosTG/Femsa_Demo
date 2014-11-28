//
//  KCOMenu2.swift
//  Femsa
//
//  Created by KREATIVECO on 28/11/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit

class KCOMenu2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func displayAlert2(sender: AnyObject) {
        
        var alert = UIAlertController(title: "Notificación Del Clima", message: "La temperatura es : 28º" , preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)

    
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}
