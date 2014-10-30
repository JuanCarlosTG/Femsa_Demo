//
//  KCOVideo.swift
//  Femsa
//
//  Created by Jossue on 30/10/14.
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
    
    @IBAction func VIDEO(sender: AnyObject) {
        
        var url:NSURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ALTAwp6", ofType: "mov")!)!
        
        
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        moviePlayer.view.frame = CGRect(x: 0, y: 51, width: 320, height: 203)
        
        self.view.addSubview(moviePlayer.view)
        
        moviePlayer.fullscreen = true
        
        moviePlayer.controlStyle = MPMovieControlStyle.Embedded
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}

//MPMoviePlayerViewController *player = [[MPMoviePlayerViewController alloc] initWithContentURL: URL];
//[self presentMoviePlayerViewControllerAnimated: player];
//player.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
//[player.moviePlayer play];
//player = nil;
