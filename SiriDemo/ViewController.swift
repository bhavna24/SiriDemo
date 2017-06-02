//
//  ViewController.swift
//  SiriDemo
//
//  Created by Bhavna on 5/5/17.
//  Copyright © 2017 Bhavna. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        INPreferences.requestSiriAuthorization({status in
            switch status {
            case .authorized:
                print("Siri: Authorized")
            default:
                print("Siri: Not authorized")
            }
        })
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

