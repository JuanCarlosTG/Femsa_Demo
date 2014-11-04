//
//  KCOJuego.swift
//  Femsa
//
//  Created by Jossue on 30/10/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit

class KCOJuego: UIViewController
{

    //Properties
    @IBOutlet weak var webContainer: UIWebView!
    
    override func viewDidLoad( )
    {
        super.viewDidLoad( )
        
        self.shouldLoadCustomURL( )
    }

    override func didReceiveMemoryWarning( )
    {
        super.didReceiveMemoryWarning( )
    }
    
    override func prefersStatusBarHidden() -> Bool
    {
        return true
    }
    
    func shouldLoadCustomURL( )
    {
        let customURL = "http://kreativeco.com/demo-banorte/"
        let url : NSURL = NSURL( string: customURL )!
        let request : NSURLRequest = NSURLRequest( URL: url )
        
        webContainer.loadRequest( request )
    }
}
