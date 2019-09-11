//
//  TraitsTableViewController.swift
//  CYOA
//
//  Created by Stacey on 9/4/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class TraitsTableViewController: UITableViewController {

    private var sections = [TraitsTableModel]()
    
    let traits = "traitsCell"
    let trait = Traits.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let footer = UIView()
        footer.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        footer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 280)
        tableView.tableFooterView = footer
        
        sections = [TraitsTableModel(sectionName: "", traitName: ["Combat","Charisma", "Intelligence", "Tech Savy", "Diplomacy"], traitLevel: [trait.combat, trait.charisma, trait.intelligence, trait.techSavy, trait.diplomacy], traitMaxLevel: [100, 100, 100, 100, 100])]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].traitName.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: traits, for: indexPath)
        
        let traitRow = sections[indexPath.section]
        
        cell.textLabel!.text = traitRow.traitName[indexPath.row]
        cell.detailTextLabel?.text = "\(traitRow.traitLevel[indexPath.row]) / \(traitRow.traitMaxLevel[indexPath.row])"

        return cell
    }

}
