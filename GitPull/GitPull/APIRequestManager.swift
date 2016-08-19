//
//  APIRequestManager.swift
//  GitPull
//
//  Created by Jonny Pickard on 19/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import Foundation

class APIRequestManager {
    
    func getRequest(URLSession: NSURLSession = NSURLSession.sharedSession(), params: String = "", completion: (result: NSDictionary?, success: Bool) -> Void) {
        
        let params = params.trim().lowercaseString
        
        let url = NSURL(string: "https://api.github.com/search/users?q=" + params)
        
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "GET"
        
        let session = URLSession
        
        let task = session.dataTaskWithRequest(request) {
            data, response, error in
            
            if error != nil {
                print(error)
                return
            }

            do {
                if let convertedJsonIntoDict = try NSJSONSerialization.JSONObjectWithData(data!, options: []) as? NSDictionary {
                    
                    completion(result: convertedJsonIntoDict, success: true)
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
        task.resume()
        
    }
    
}