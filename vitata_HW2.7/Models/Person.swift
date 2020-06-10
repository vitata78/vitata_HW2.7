//
//  Person.swift
//  vitata_HW2.7
//
//  Created by Andrew on 6/9/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
}

extension Person {
    static func getPersons() -> [Person] {
        
        var contactList: [Person] = []
        
        let data = DataManager()
        data.firstNameList.shuffle()
        data.lastNameList.shuffle()
        data.emailList.shuffle()
        data.phoneList.shuffle()
        
        for item in 0...data.firstNameList.count - 1 {
            contactList.append(Person (
                firstName: data.firstNameList[item],
                lastName: data.lastNameList[item],
                email: data.emailList[item],
                phone: data.phoneList[item]))
        }
     
        return contactList
    }
}
