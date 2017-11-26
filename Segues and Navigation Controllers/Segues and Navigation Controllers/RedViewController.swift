//
//  RedViewController.swift
//  Segues and Navigation Controllers
//
//  Created by Administrateur on 20/11/2017.
//  Copyright © 2017 Administrateur. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    @IBOutlet var youFoundMe: UIView!
    
    
    var youfoundme = "You FOund Me!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func back(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
}
