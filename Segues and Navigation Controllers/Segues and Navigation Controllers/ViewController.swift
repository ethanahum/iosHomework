//
//  ViewController.swift
//  Segues and Navigation Controllers
//
//  Created by Administrateur on 20/11/2017.
//  Copyright © 2017 Administrateur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func goBlue(_ sender: Any) {
        self.performSegue(withIdentifier: "blueSegue", sender: nil)
    }
    @IBAction func nextView(_ sender: Any) {
        self.performSegue(withIdentifier: "redSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "redSegue" {
            if let vc: RedViewController = segue.destination as?
                RedViewController
            {
                if let text : String = self.textField.text
                {
                    
                    vc.youFoundMe = text
                }
            }
        }
        
        
    }
    
}

