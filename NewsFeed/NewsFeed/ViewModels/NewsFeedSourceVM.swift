//
//  NewsFeedSourceVM.swift
//  NewsFeed
//
//  Created by Raja on 04/07/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import Foundation

class NewsFeedSourceVM {
    
    
    public static func getNewsFeedSourceList() -> [String] {
        
        let newsFeedSources = ["Google News", "The Hindu", "Times of India", "BBC", "News 24", "CNN", "ESPN Sports", "MTV News", "ABC News", "Bloomberg"]
        
        return newsFeedSources
    }
    
}
