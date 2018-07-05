//
//  DrawBadgeView.swift
//  NewsFeed
//
//  Created by Raja on 05/07/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import UIKit

class DrawBadgeView: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        backgroundColor = UIColor.clear
        
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: frame.width, y: frame.height))
        path.addLine(to: CGPoint(x: frame.width, y: 0))
        path.addLine(to: .zero)
        path.close()
        
        UIColor.red.setStroke()
        
        path.stroke()
        
//        UIColor.blue.setFill()
//        path.fill()
        
        
        let view = TickView(frame: CGRect(x: 0, y: 0, width: frame.width/2, height: frame.height/2))
        
        view.backgroundColor = UIColor.clear
        view.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(view)
        
        [view.topAnchor.constraint(equalTo: topAnchor),
        view.rightAnchor.constraint(equalTo: rightAnchor),
        view.heightAnchor.constraint(equalToConstant: frame.width/2),
        view.widthAnchor.constraint(equalToConstant: frame.width/2)].forEach { (contraints) in
            contraints.isActive = true
        }
        
//        view.backgroundColor = UIColor.red
        
        bringSubview(toFront: view)
    }
}
