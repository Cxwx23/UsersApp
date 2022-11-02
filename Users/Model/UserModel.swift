//
//  UserModel.swift
//  Users
//
//  Created by Cole Warner on 11/2/22.
//

import Foundation

/// Model for longitude and latitude at company location
struct GeoModel: Codable {
    var lat: String?
    var lng: String?
    
}

/// Model for user address
struct AddressModel: Codable {
    var street: String?
    var suite: String?
    var city: String?
    var zipcode: String?
    var geo: GeoModel?

}

/// Model for data regarding the users company
struct CompanyModel: Codable {
    var name: String?
    var catchPhrase: String?
    var bs: String?
    
}

/// Model for user data
struct UserModel: Identifiable, Codable {
    var id: Int?
    var name: String?
    var username: String?
    var email: String?
    var address: AddressModel?
    var phone: String?
    var website: String?
    var company: CompanyModel?

}
