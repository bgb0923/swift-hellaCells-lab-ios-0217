//
//  ListViewController.swift
//  HellaCells
//
//  Created by William Brancato on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UITableViewController {
    
    var numbers : [String] = []
    
    override func viewWillAppear(_ animated: Bool) {
        for number in 0...100 {
            numbers.append("\(number)")
        }
    }
    
    override func numberOfSections(in tabletView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return numbers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath)
        let number = numbers[indexPath.row]
        cell.textLabel?.text = number
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "NumberDetailView" { return }
        if let dest = segue.destination as? DetailViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.number = numbers[(indexPath as NSIndexPath).row]
        }
    }
    
    
    
}
