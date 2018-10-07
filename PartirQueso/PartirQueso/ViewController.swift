//
//  ViewController.swift
//  PartirQueso
//
//  Created by Miguel Lahera Hervilla on 06/10/2018.
//  Copyright © 2018 Miguel Lahera Hervilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var qeuso1: quesoView!
    
    @IBOutlet weak var queso2: quesoView!
    
    @IBOutlet weak var partir: UISlider!
    
    @IBAction func quesoUpdate(_ sender: UISlider) {
        
        let v = Double(sender.value)
        qeuso1.a1 = v*2*Double.pi
        queso2.a0 = v*2*Double.pi
        
        qeuso1.setNeedsDisplay()
        queso2.setNeedsDisplay()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        qeuso1.a0 = 0
        queso2.a1 = 2*Double.pi
        partir.sendActions(for: .valueChanged)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

