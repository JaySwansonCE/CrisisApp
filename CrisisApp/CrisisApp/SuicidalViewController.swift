//
//  SuicidalViewController.swift
//  CrisisApp
//
//  Created by Jay Swanson on 11/16/18.
//  Copyright © 2018 MentalHealth. All rights reserved.
//

import Foundation
import UIKit

class SuicidalViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func callContact1(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://7087109980")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func callContact2(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://8013006230")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func callContact3(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://8149336540")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    
  
}

