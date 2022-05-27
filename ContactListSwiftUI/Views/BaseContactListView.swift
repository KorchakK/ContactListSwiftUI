//
//  BaseContactListView.swift
//  ContactListSwiftUI
//
//  Created by Konstantin Korchak on 27.05.2022.
//

import SwiftUI

struct BaseContactListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: ContactInformation(person: person)) {
                    Text("\(person.fullName)")
                }
                .navigationTitle("Contact List")
            }
        }
    }
}

struct BaseContactListView_Previews: PreviewProvider {
    static var previews: some View {
        BaseContactListView(persons: Person.getPersons())
    }
}
