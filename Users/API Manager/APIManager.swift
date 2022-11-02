//
//  APIManager.swift
//  Users
//
//  Created by Cole Warner on 11/2/22.
//

import Foundation

/// Obtains, decodes, and returns data from a url specified by a String.
func getUserData(url: String, closure: @escaping ([UserModel]) -> ()) {

    // Create a URL object from the string url
    guard let userURL = URL(string: url) else {
        print("URL incorrect")
        return
    }
    
    //  Creates a URLSession to obtain data from the URL specified by userURL
    URLSession.shared.dataTask(with: URLRequest(url: userURL)) { data, response, error in
        
        //  Checks the data and error values, to confirm data was returned without error
        guard let data = data, error == nil else {
            print("No JSON data returned")
            return
        }
        
        //  Attempts to decode the JSON data returned from the URL.
        do {
            let decodedData = try JSONDecoder().decode([UserModel].self, from: data)
            closure(decodedData)
        } catch {
            print("Error decoding data")
        }
        
    }
    .resume()
}
