//
//  CreditsTableViewController.swift
//  CYOA
//
//  Created by Stacey on 8/31/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit
import SafariServices

class CreditsTableViewController: UITableViewController {

    private var sections = [SectionModel]()
    
    let creditCell = "creditCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //code for footer - need to match color of header as well as put this in it's own superclass.
        let footer = UIView()
        footer.backgroundColor = .lightGray
        footer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        tableView.tableFooterView = footer
        
        sections = [SectionModel(sectionName: "Photos", sectionItems: ["Google", "Yahoo"], target: ["http://google.com","http://yahoo.com"])]
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
        let cell = tableView.dequeueReusableCell(withIdentifier: creditCell, for: indexPath)
        
        cell.textLabel!.text = sections[indexPath.section].sectionItems[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let targetVC = sections[indexPath.section].target[indexPath.row]
        let url = URL(string: targetVC)
        let safariVC = SFSafariViewController(url: url!)
        present(safariVC, animated: true, completion: nil)
    }

}
