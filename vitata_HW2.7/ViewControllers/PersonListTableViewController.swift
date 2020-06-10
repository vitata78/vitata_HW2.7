//
//  PersonListTableViewController.swift
//  vitata_HW2.7
//
//  Created by Andrew on 6/9/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import UIKit


class PersonListTableViewController: UITableViewController {
    var persons = Person.getPersons()


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)

        cell.textLabel?.text = persons[indexPath.row].fullName

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "personDetailsSegue", sender: person)
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "personDetailsSegue" {
            let personDetailsVC = segue.destination as! PersonDetailsViewController
            personDetailsVC.person = sender as? Person
            return
        }
        
    }

}
