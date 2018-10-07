//
//  ViewController.swift
//  PartirQueso
//
//  Created by Miguel Lahera Hervilla on 06/10/2018.
//  Copyright © 2018 Miguel Lahera Hervilla. All rights reserved.
//

import UIKit


class ViewController: UIViewController, quesoViewDataSource {
    
    private var sliderValue: Double = 0 {
        didSet{
            
            qeuso1.setNeedsDisplay()
            queso2.setNeedsDisplay()
        }
    }


    @IBOutlet weak var qeuso1: quesoView!
    
    @IBOutlet weak var queso2: quesoView!
    
    @IBOutlet weak var partir: UISlider!
    
    @IBAction func quesoUpdate(_ sender: UISlider) {
        
        sliderValue = Double(sender.value)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        qeuso1.datasource = self
        queso2.datasource = self
        
        partir.sendActions(for: .valueChanged)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func geta0(_ qv: quesoView) -> Double{ //para que sirve poner _ pv: quesoView (para identificar cual de los dos me está preguntando)
        switch qv {
        case qeuso1:
            return 0
        case queso2:
            return sliderValue*2*Double.pi
        default:
            return 0
        }
    }
    
    func geta1(_ qv: quesoView) -> Double{
        switch qv {
        case qeuso1:
            return sliderValue*2*Double.pi
        case queso2:
            return 2*Double.pi
        default:
            return 0
        }
    }


}

