//
//  TickView.swift
//  NewsFeed
//
//  Created by Raja on 05/07/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import UIKit

class TickView: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let path = UIBezierPath()
        
        path.lineWidth = 4
        
        path.move(to: CGPoint(x: 0+2, y: frame.height/2))
        
        path.addLine(to: CGPoint(x: (frame.width/2), y: frame.height-2))
        
        let stopPointPercentage = frame.height/20
        
        path.addLine(to: CGPoint(x: frame.width-stopPointPercentage, y: stopPointPercentage))
        
//        path.close()
        
        UIColor.black.setStroke()
        path.stroke()
        
    }

}
