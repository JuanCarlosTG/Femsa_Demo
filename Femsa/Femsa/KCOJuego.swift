//
//  KCOJuego.swift
//  Femsa
//
//  Created by KREATIVECO on 30/10/14.
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
    
    
    func shouldLoadCustomURL( )
    {
        let customURL = "http://www.kreativeco.com/demo-femsa/sections/game.html"
        let url : NSURL = NSURL( string: customURL )!
        let request : NSURLRequest = NSURLRequest( URL: url )
        
        webContainer.loadRequest( request )
    }
    
    override func prefersStatusBarHidden() -> Bool
    {
        return true
    }
}
