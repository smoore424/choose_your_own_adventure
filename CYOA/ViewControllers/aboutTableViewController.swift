//
//  aboutTableTableViewController.swift
//  CYOA
//
//  Created by Stacey on 8/14/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class aboutTableViewController: UITableViewController {

    private var sections = [SectionModel]()
    
    let aboutCell = "aboutCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let footer = UIView()
        footer.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        footer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 280)
        tableView.tableFooterView = footer
    
        sections = [SectionModel(sectionName: "Our Story", sectionItems: ["Our Story"], target: ["Story"]), SectionModel(sectionName: "Rate and Credits", sectionItems: ["Rate", "Credits"], target: ["Rate", "Credits"]), SectionModel(sectionName: "Contact and Privacy", sectionItems: ["Contact", "Privacy"], target: ["Contact", "Privacy"])]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].sectionName
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].sectionItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: aboutCell, for: indexPath)
        
        cell.textLabel!.text = sections[indexPath.section].sectionItems[indexPath.row]
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let targetVC = sections[indexPath.section].target[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: targetVC)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }

}
