//
//  ProfileViewController.swift
//  TwitterApp
//
//  Created by Jeffrey Eng on 6/15/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, Identity {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        API.shared.GETOAuthUser { (user) in
            print(user)
        }
    }
    
    @IBAction func closeButtonSelected(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
