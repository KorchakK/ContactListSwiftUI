//
//  ExtentedListView.swift
//  ContactListSwiftUI
//
//  Created by Konstantin Korchak on 28.05.2022.
//

import SwiftUI

struct ExtendedListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(person.fullName) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
                .navigationTitle("Contact List")
            }
        }
    }
}

struct ExtentedListView_Previews: PreviewProvider {
    static var previews: some View {
        ExtendedListView(persons: Person.getPersons())
    }
}
