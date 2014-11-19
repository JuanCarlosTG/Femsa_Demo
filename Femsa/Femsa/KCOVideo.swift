//
//  KCOVideo.swift
//  Femsa
//
//  Created by KREATIVECO on 30/10/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit
import MediaPlayer

class KCOVideo: UIViewController {
    
    var moviePlayer:MPMoviePlayerController!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func video_Final(sender: AnyObject) {
        var url:NSURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("KOFDemoTV", ofType: "mov")!)!
        
        
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        moviePlayer.view.frame = CGRect(x: 0, y: 60, width: 385, height: 245)
        
        self.view.addSubview(moviePlayer.view)
        
        moviePlayer.fullscreen = true
        
        moviePlayer.controlStyle = MPMovieControlStyle.Embedded
    
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}
