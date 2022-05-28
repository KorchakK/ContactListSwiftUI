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
        List(0..<3) { numberOfRow in
            switch numberOfRow {
            case 0:
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 180, height: 180)
                    Spacer()
                }
                .padding()
            case 1:
                HStack{
                    Image(systemName: "phone")
                        .foregroundColor(.blue)
                    Text("\(person.phoneNumber)")
                }
                .padding()
            default:
                HStack{
                    Image(systemName: "tray")
                        .foregroundColor(.blue)
                    Text("\(person.email)")
                }
                .padding()
            }
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactInfomation_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformation(person: Person(
            name: "John",
            surname: "Smith",
            phoneNumber: "89117771497",
            email: "noemail@email.com"
        ))
    }
}
