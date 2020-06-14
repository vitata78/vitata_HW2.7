//
//  TabBarViewController.swift
//  vitata_HW2.7
//
//  Created by Andrew on 6/13/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        
        let personListVC = viewControllers?.first as! PersonListTableViewController
        let contactListVC = viewControllers?.last as! ContactListTableTableViewController
        
        personListVC.persons = persons
        contactListVC.persons = persons
        contactListVC.title = "XXX List"
        
        
    }

}
