//
//  AddressView.swift
//  Users
//
//  Created by Cole Warner on 11/2/22.
//

import SwiftUI


/// Subview showing the users address information
struct AddressView: View {
    let user: UserModel

    var body: some View {
        VStack(alignment: .leading) {
            Text(Label.street.rawValue + (user.address?.street ?? ""))
            Text(Label.suite.rawValue + (user.address?.suite ?? ""))
            Text(Label.city.rawValue + (user.address?.city ?? ""))
            Text(Label.zipcode.rawValue + (user.address?.zipcode ?? ""))
            Text(Label.lat.rawValue + (user.address?.geo?.lat ?? ""))
            Text(Label.lng.rawValue + (user.address?.geo?.lng ?? ""))
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}
