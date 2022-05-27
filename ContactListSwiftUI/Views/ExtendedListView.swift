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
                    ForEach(0..<2) { i in
                        if i == 0 {
                            HStack {
                                Image(systemName: "phone")
                                    .foregroundColor(.blue)
                                Text(person.phoneNumber)
                            }
                        } else {
                            HStack {
                                Image(systemName: "tray")
                                    .foregroundColor(.blue)
                                Text(person.email)
                            }
                        }
                    }
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
