//
//  quesoView.swift
//  PartirQueso
//
//  Created by Miguel Lahera Hervilla on 06/10/2018.
//  Copyright © 2018 Miguel Lahera Hervilla. All rights reserved.
//

import UIKit



@IBDesignable



class quesoView: UIView {
    
    var a0: Double = 0
    var a1: Double = Double.pi
    
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
        path.addArc(withCenter: c, radius: r, startAngle: CGFloat(a0), endAngle: CGFloat(a1), clockwise: false)
        path.close()
        colorin1.set()
        
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
