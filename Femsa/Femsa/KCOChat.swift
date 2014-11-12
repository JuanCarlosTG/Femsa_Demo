//
//  KCOChat.swift
//  Femsa
//
//  Created by KREATIVECO on 30/10/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit

class KCOChat: UIViewController {

    @IBOutlet var campoTexto: UITextField!
    @IBOutlet var TextoMostrado2: UITextView!
    @IBOutlet var TextoMostrado3: UITextView!
    @IBOutlet var TextoMostrado4: UITextView!
    var contador = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    

    @IBAction func botonEnviar(sender: UIButton) {
       
        if contador == 0
        {
            TextoMostrado2.text = campoTexto.text
            TextoMostrado2.backgroundColor = UIColor(red: 237, green: 229, blue: 220, alpha: 1)
            campoTexto.text=""
        }
        if contador == 1
        {
            TextoMostrado3.text = campoTexto.text
            TextoMostrado3.backgroundColor = UIColor(red: 237, green: 229, blue: 220, alpha: 1)
            campoTexto.text=""
        }
        if contador == 2
        {
            TextoMostrado4.text = campoTexto.text
            TextoMostrado4.backgroundColor = UIColor(red: 237, green: 229, blue: 220, alpha: 1)
            campoTexto.text=""
        }
        contador += 1

    }
    
}
