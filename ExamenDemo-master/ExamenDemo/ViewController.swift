//
//  ViewController.swift
//  ExamenDemo
//
//  Created by Adrian on 04/10/2018.
//  Copyright © 2018 Adrián Blázquez León. All rights reserved.
//

import UIKit

class ViewController: UIViewController, QuesoViewDataSource {

    
    
    @IBOutlet weak var quesoViewUp: QuesoView!
    
    @IBOutlet weak var quesoViewDown: QuesoView!
    
    @IBOutlet weak var slider: UISlider!
    
    private var sliderValue: Double = 0{
        didSet{
            quesoViewUp.setNeedsDisplay()
            quesoViewDown.setNeedsDisplay()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        quesoViewUp.datasource = self
        quesoViewDown.datasource = self
        
        slider.sendActions(for: .valueChanged)
        
    }

    
    @IBOutlet weak var updateQuesoUp: QuesoView!
    
    @IBAction func updateQuesos(_ sender: UISlider) {
        
//        let v = Double(sender.value)
//
//        quesoViewUp. = v*2*Double.pi
//        quesoViewDown.a0 = 2*v*Double.pi
//
        sliderValue = Double(sender.value)
        // Poner un observador paa que no tenga que cambiar.
        
//        quesoViewUp.setNeedsDisplay()
//        quesoViewDown.setNeedsDisplay()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Cosas del DS del queso
    
    func initialAngleForQuesoView(_ qv: QuesoView) -> Double {
        switch qv {
        case quesoViewUp:
            return 0
        case  quesoViewDown:
            return 2*.pi
        }
    }
    
    func finialAngleForQuesoView(_ qv: QuesoView) -> Double {
        switch 
    }

    
}

