//
//  ViewController.swift
//  triangleprobe
//
//  Created by Jesús  on 8/10/18.
//  Copyright © 2018 Isabel Rodríguez Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideSlider: UISlider!
    
    @IBOutlet weak var funcView: triangleView!
    var side: Double = 10.0{
        didSet {
            funcView.setNeedsDisplay()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funcView.side = 50.0
        sideSlider.sendActions(for: .valueChanged)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    @IBAction func sideUpdate(_ sender: UISlider) {
        funcView.side = Double(100.0*sender.value)
    }


}

