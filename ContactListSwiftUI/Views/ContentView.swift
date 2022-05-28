//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Konstantin Korchak on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            BaseContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            ExtendedListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
