//
//  File.swift
//  Users
//
//  Created by Cole Warner on 11/2/22.
//

import Foundation


/// ViewModel for User list view. GetUsers returns data decoded JSON data from a URL located in Commmon
class UserViewModel: ObservableObject {
    @Published var users: [UserModel] = []
    
    init() {
        getUsers()
    }
    
    func getUsers() {
        getUserData(url: Server.Post.rawValue) { returnedUsers in
            
            DispatchQueue.main.async {
                self.users = returnedUsers
            }
        }
    }
    
    
}
