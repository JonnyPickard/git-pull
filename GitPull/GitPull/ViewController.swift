//
//  ViewController.swift
//  GitPull
//
//  Created by Jonny Pickard on 19/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let api = APIRequestManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.getRequest {
            result, success in
            
            print(success)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

