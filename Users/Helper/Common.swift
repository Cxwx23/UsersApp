//
//  Common.swift
//  Users
//
//  Created by Cole Warner on 11/2/22.
//

import Foundation

/// Server url addresses for JSON data
enum Server: String {
    case Post = "https://jsonplaceholder.typicode.com/users"
}

/// Labels for dispay of user data.
enum Label: String {
    case id = "ID: "
    case name = "Name: "
    case username = "Username: "
    case email = "Email: "
    case address = "Address"
    case phone = "Phone: "
    case website = "Website"
    case company = "Company"
    case lat = "Latitude: "
    case lng = "Longitude: "
    case street = "Street: "
    case city = "City: "
    case zipcode = "Zipcode: "
    case suite = "Suite: "
  
}

/// Labels for display of company data
enum Company: String {
    case name = "Company Name: "
    case catchPhrase = "Company Catchphrase: "
    case bs = "Company bs: "
}

