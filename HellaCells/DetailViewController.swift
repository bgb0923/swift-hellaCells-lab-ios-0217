//
//  DetailViewController.swift
//  HellaCells
//
//  Created by William Brancato on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var number : String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        numberLabel.text = number
        navigationItem.title = number
    }
}
