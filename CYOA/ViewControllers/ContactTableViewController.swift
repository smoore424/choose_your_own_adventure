//
//  ContactTableViewController.swift
//  CYOA
//
//  Created by Stacey on 8/31/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    private var sections = [SectionModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = .init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        sections = [SectionModel(sectionName: "Email", sectionItems: ["Email", "Report Bug"], target: ["email", "email"]), SectionModel(sectionName: "Get Social", sectionItems: ["Facebook", "Twitter", "Instagram"], target: ["web", "web", "web"])]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].sectionName
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 125
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].sectionItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        cell.textLabel!.text = sections[indexPath.section].sectionItems[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let targetVC = sections[indexPath.section].target[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: targetVC)
    self.navigationController?.pushViewController(viewController!, animated: true)
    }
}
