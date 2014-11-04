//
//  KCOChat.swift
//  Femsa
//
//  Created by Jossue on 30/10/14.
//  Copyright (c) 2014 JCKreactiveco001. All rights reserved.
//

import UIKit

class KCOChat: UIViewController {

    
    //@IBOutlet var TextoMostrado: UILabel!
    @IBOutlet var campoTexto: UITextField!
    @IBOutlet var TextoMostrado2: UITextView!
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
    
    
//    @IBAction func textoMostrado(nameTextField: UITextField) {
//        textoChat.text = nameTextField.text)"
//    }

    @IBAction func botonEnviar(sender: UIButton) {
        //TextoMostrado.text = campoTexto.text
        TextoMostrado2.text = campoTexto.text
        TextoMostrado2.backgroundColor = UIColor(red: 237, green: 229, blue: 220, alpha: 1)
        campoTexto.text=""
    }
}
