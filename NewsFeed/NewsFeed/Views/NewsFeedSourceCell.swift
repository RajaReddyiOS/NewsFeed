//
//  NewsFeedSourceCell.swift
//  NewsFeed
//
//  Created by Raja on 05/07/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import UIKit

class NewsFeedSourceCell: UICollectionViewCell {
    
    @IBOutlet weak var sourceLbl:UILabel!
    
    @IBOutlet weak var containerView:UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        containerView.applyBorder()
        
    }
    
    
}
