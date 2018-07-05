//
//  Helper.swift
//  NewsFeed
//
//  Created by Raja on 04/07/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import Foundation
import UIKit

class Helper  {
    
}


extension UIView {
    
    func applyShadow(shadowColor:UIColor = UIColor.gray, offset:CGSize = CGSize(width: 2.0, height: 2.0), opacity:Float = 0.8, radius:CGFloat = 3, shadowRadius:CGFloat = 3) {
        
        layer.cornerRadius = radius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
        layer.shadowRadius = shadowRadius
    }
    
    func applyBorder(_ radius:CGFloat = 1, borderColor: UIColor = UIColor.gray) {
        layer.borderWidth = radius
        layer.borderColor = borderColor.cgColor
    }
    
}
