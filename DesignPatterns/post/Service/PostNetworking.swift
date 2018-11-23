//
//  PostNetworking.swift
//  DesignPatterns
//
//  Created by sbyka on 23/11/18.
//  Copyright © 2018 sbyka. All rights reserved.
//

import Foundation


class PostNetworking {
    private init() {}
    
//    func getPosts() {
//    }
    
    
    
        
        static func getPosts(completion: @escaping (GetPostResponse)->Void){
            guard let url =  URL(string: "https://jsonplaceholder.typicode.com/posts")  else {return}
            NetWorkingService.shared.getData(fromURL: url) { (json) in
                do {
                    let response = try GetPostResponse(json: json)
                    completion(response)
                } catch{}
            }
        }
        
       
    
}
