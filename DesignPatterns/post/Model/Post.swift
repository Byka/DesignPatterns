//
//  Post.swift
//  DesignPatterns
//
//  Created by sbyka on 23/11/18.
//  Copyright © 2018 sbyka. All rights reserved.
//

import Foundation

struct Post {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    init?(dict: [String: Any]) {
        guard let userId = dict["userId"] as? Int,
            let id = dict["id"] as? Int,
            let title = dict["title"] as? String,
            let body = dict["body"] as? String
            else{return nil}
        
        self.userId = id
        self.id = id
        self.title = title
        self.body = body
        
    }
}
