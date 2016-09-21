//
//  ChatTriangle.swift
//  MyChat
//
//  Created by KurtHo on 2016/9/20.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class ChatBackground: UIView {
    
     var lightColor: UIColor = UIColor(red: 66/255, green: 166/255, blue: 122/255, alpha: 1)
     var darkColor: UIColor = UIColor.clear

    var patternSize: Double = 20
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(darkColor.cgColor)
        context!.fill(rect)
        let drawSize = CGSize(width: patternSize, height: patternSize)
        let trianglePath = UIBezierPath()
        
        trianglePath.move(to: CGPoint(x:0, y:0))
        trianglePath.addLine(to: CGPoint(x:drawSize.width, y:drawSize.height/2))
        trianglePath.addLine(to: CGPoint(x:0, y:drawSize.height))

        lightColor.setFill()
        trianglePath.fill()
    }
}
