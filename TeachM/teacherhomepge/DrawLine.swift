//
//  DrawLine.swift
//  TeachM
//
//  Created by Yan Yan on 9/29/17.
//  Copyright © 2017 Yan Yan. All rights reserved.
//

import UIKit

class DrawLine: UIView {

    
    var line = UIBezierPath()
    func graph(){
        line.move(to: .init(x: 0, y: 134))
        line.addLine(to: .init(x: bounds.height, y: 134))
        UIColor.black.setStroke()
        line.lineWidth = 1
        line.stroke()
        
    }
    override func draw(_ rect: CGRect) {
        
       graph()
    
    }
}
