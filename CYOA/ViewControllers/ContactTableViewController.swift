//
//  ContactTableViewController.swift
//  CYOA
//
//  Created by Stacey on 8/31/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import MessageUI
import SafariServices
import UIKit

class ContactTableViewController: UITableViewController {
    
    private var sections = [SectionModel]()
    
    let contactCell = "contactCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let footer = UIView()
        footer.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        footer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 280)
        tableView.tableFooterView = footer
        
        sections = [SectionModel(sectionName: "Email", sectionItems: ["Email", "Report Bug"], target: ["email", "email"]), SectionModel(sectionName: "Get Social", sectionItems: ["Facebook", "Twitter", "Instagram"], target: ["http://www.facebook.com", "http://www.twitter.com", "http://www.instagram.com"])]
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
        let cell = tableView.dequeueReusableCell(withIdentifier: contactCell, for: indexPath)
        
        cell.textLabel!.text = sections[indexPath.section].sectionItems[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let targetVC = sections[indexPath.section].target[indexPath.row]
        
        if targetVC == "email" {
            showMailComposer()
        } else {
            let url = URL(string: targetVC)
            let safariVC = SFSafariViewController(url: url!)
            present(safariVC, animated: true, completion: nil)
        }
    }
    
    func showMailComposer() {
        
        guard MFMailComposeViewController.canSendMail() else {
            //show alert informaing that device cannot send mail
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["smoore424@gmail.com"])
        composer.setSubject("Hello")
        
        present(composer, animated: true)
    }
}

extension ContactTableViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error {
            //need to add an alert that an error occured.
            controller.dismiss(animated: true, completion: nil)
            return
        }
        
        //need to add alerts that will show the user that an error occured.
        switch result {
        case .cancelled:
            print("cancel")
        case .failed:
            print("failed")
        case .saved:
            print("saved")
        case .sent:
            print("sent")
        @unknown default:
            print("A fatal error has occured.")
        }
        
         controller.dismiss(animated: true, completion: nil)
    }
}
