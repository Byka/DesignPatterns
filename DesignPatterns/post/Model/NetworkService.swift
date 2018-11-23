//
//  NetworkService.swift
//  DesignPatterns
//
//  Created by sbyka on 23/11/18.
//  Copyright © 2018 sbyka. All rights reserved.
//

import Foundation


class NetWorkingService {
    
    static let shared = NetWorkingService()
    
    private init(){
        
    }
    
    
    func getData(fromURL url: URL, completion: @escaping (Any)->Void) {
        let session = URLSession.shared
       // guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
                print(json)
                
            } catch {
                print("Unable to get the data")
            }
        }
        task.resume()
    }
}
