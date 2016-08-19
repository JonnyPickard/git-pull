//
//  APIRequestManager.swift
//  GitPull
//
//  Created by Jonny Pickard on 19/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import Foundation

class APIRequestManager {
    
    func getRequest(URLSession: NSURLSession = NSURLSession.sharedSession(), completion: (result: NSData?, success: Bool) -> Void) {
        let url = NSURL(string: "https://api.github.com/search/users?q=")
        
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "GET"
        
        let session = URLSession
        
        let task = session.dataTaskWithRequest(request) {
            data, response, error in
            
            if error != nil {
                print(error)
                return
            } else {
                completion(result: data!, success: true)
            }
        }
        task.resume()
        
    }
}