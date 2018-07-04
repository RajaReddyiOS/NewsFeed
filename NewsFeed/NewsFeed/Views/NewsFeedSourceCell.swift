//
//  NewsFeedSourceCell.swift
//  NewsFeed
//
//  Created by Raja on 04/07/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import UIKit

class NewsFeedSourceCell: UITableViewCell {

    @IBOutlet weak var sourceLbl:UILabel!
    
    @IBOutlet weak var containerView:UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        containerView.applyShadow()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
