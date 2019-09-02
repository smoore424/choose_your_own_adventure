//
//  aboutTableTableViewController.swift
//  CYOA
//
//  Created by Stacey on 8/14/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class aboutTableViewController: UITableViewController {

    var item = [aboutModel(title: "Our Story", target: "Story"), aboutModel(title: "Rate", target: "Rate"), aboutModel(title: "Credits", target: "Credits"), aboutModel(title: "Contact", target: "Contact"), aboutModel(title: "Privacy Policy", target: "Privacy")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "aboutCell", for: indexPath)

        cell.textLabel!.text = item[indexPath.row].title

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let targetVC = item[indexPath.row].target
        let viewController = storyboard?.instantiateViewController(withIdentifier: targetVC)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }

}
