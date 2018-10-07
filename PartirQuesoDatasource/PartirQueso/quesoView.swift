//
//  quesoView.swift
//  PartirQueso
//
//  Created by Miguel Lahera Hervilla on 06/10/2018.
//  Copyright © 2018 Miguel Lahera Hervilla. All rights reserved.
//

import UIKit

protocol quesoViewDataSource: class {
    func geta0(_ qv: quesoView) -> Double
    func geta1(_ qv: quesoView) -> Double
}


@IBDesignable

class quesoView: UIView {
    
    weak var datasource: quesoViewDataSource!
    
    /*var a0: Double = 0
    var a1: Double = Double.pi*/
    
    @IBInspectable
    var colorin1: UIColor = UIColor.blue
    var colorin2: UIColor = UIColor.yellow
    
    
    override func draw(_ rect: CGRect) {
        
        let w = bounds.size.width
        let h = bounds.size.height
        let c = CGPoint(x: w/2, y: h/2)
        let r = min(w,h)/2
        
        let path = UIBezierPath()
        
        path.move(to: c)
        path.addArc(withCenter: c, radius: r, startAngle: CGFloat(datasource.geta0(self)), endAngle: CGFloat(datasource.geta1(self)), clockwise: false)
        path.close()
        path.lineWidth = 7
        colorin1.setFill()
        colorin2.setStroke()
        path.stroke()

        path.fill()
        
    }
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
