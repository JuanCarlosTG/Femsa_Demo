//
//  KCOPDFViewerVC.swift
//  Femsa
//
//  Created by KREATIVECO on 11/11/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit

class KCOPDFViewerVC: UIViewController {

    @IBOutlet weak var PDFUIWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.shouldLoadCustomURL()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func shouldLoadCustomURL( )
    {
        let path : String = NSBundle.mainBundle( ).pathForResource("WhatsNewIniPhoneOS" , ofType: "pdf" )!
        let url : NSURL = NSURL( string: path )!
        let request : NSURLRequest = NSURLRequest( URL: url )
        PDFUIWebView.loadRequest( request )
    }


}
