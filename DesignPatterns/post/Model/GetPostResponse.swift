//
//  GetPostResponse.swift
//  DesignPatterns
//
//  Created by sbyka on 23/11/18.
//  Copyright © 2018 sbyka. All rights reserved.
//

import Foundation


struct GetPostResponse {
    
    let posts: [Post]
    
    init(json: Any) throws {
        guard let array = json as? [[String: Any]] else {throw NetWorkingError.someError}
        
        var posts = [Post]()
        
        for item in array {
            guard let post = Post(dict: item) else {continue}
            posts.append(post)
        }
        self.posts = posts
    }
}
