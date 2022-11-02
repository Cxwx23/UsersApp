//
//  ContentView.swift
//  Users
//
//  Created by Cole Warner on 11/2/22.
//

import SwiftUI

/// List view displaying the list of users
struct ContentView: View {
    @StateObject var userVm = UserViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userVm.users) { user in
                    VStack(alignment: .leading, spacing: 5) {
                        Text(Label.id.rawValue + String(user.id ?? 0))
                            .fontWeight(.semibold)
                        Text(Label.name.rawValue + (user.name ?? ""))
                            .fontWeight(.semibold)
                        Text(Label.username.rawValue + (user.username ?? ""))
                        Text(Label.email.rawValue +  (user.email ?? ""))
                        NavigationLink(Label.address.rawValue, destination: AddressView(user: user))
                        Text(Label.phone.rawValue + (user.phone ?? ""))
                        Text(Label.website.rawValue + (user.website ?? ""))
                        Text(Company.name.rawValue + (user.company?.name ?? ""))
                        Text(Company.catchPhrase.rawValue + (user.company?.catchPhrase ?? ""))
                        Text(Company.bs.rawValue + (user.company?.bs ?? ""))
                        
                    }
                    Divider()
                }
                
            }
            .listStyle(.plain)
            .navigationBarTitle(Text("Users"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
