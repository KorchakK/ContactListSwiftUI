//
//  ContactInfomation.swift
//  ContactListSwiftUI
//
//  Created by Konstantin Korchak on 28.05.2022.
//

import SwiftUI

struct ContactInformation: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 180, height: 180)
                .padding()
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactInfomation_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformation(person: Person.getPersons().first!)
    }
}
