//
//  FirstViewController.swift
//  vitata_HW2.7
//
//  Created by Andrew on 6/8/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }


}


