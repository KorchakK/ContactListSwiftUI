//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Konstantin Korchak on 27.05.2022.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStorage.shared.names.shuffled()
        let surnames = DataStorage.shared.surnames.shuffled()
        let phoneNumbers = DataStorage.shared.phoneNumbers.shuffled()
        let emails = DataStorage.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
