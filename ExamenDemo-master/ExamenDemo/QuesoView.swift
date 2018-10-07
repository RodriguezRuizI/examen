//
//  QuesoView.swift
//  ExamenDemo
//
//  Created by Adrian on 04/10/2018.
//  Copyright © 2018 Adrián Blázquez León. All rights reserved.
//

import UIKit

protocol QuesoViewDataSource: class { //It works

    func initialAngleForQuesoView(_ qv: QuesoView) -> Double
    func finialAngleForQuesoView(_ qv: QuesoView) -> Double
    
}

@IBDesignable
class QuesoView: UIView {

    // Create the object that  sotre the diferent of this, many question it needs
    // Weak, eleminar bucle the detenciones, bit if nil it doe snot work
    weak var datasource: QuesoViewDataSource!
    
    // As it starts drwaing and finish in a point2018
    var a0: Double = 0.0
    var a1: Double = Double.pi
    
    

    override func draw(_ rect: CGRect) {
         //Drawing code
        
        
        let w = bounds.size.width
        let h = bounds.size.height
        let r = min(w,h)/2
        
        let c = CGPoint(x: w/2, y: h/2)
        
        let path = UIBezierPath()
        path.move(to: c)
        path.addArc(withCenter: c, radius: r,startAngle: CGFloat(datasource.initialAnglesForQuesoView(qv)), endAngle: CGFloat(datosource.finalAngleForQuesoView), clockwise: false)
        path.close() //Initial got close with final
        
        UIColor.magenta.setFill() // Fill color
        path.fill()
    }
 

}
