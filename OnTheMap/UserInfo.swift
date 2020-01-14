//
//  UserInfo.swift
//  OnTheMap
//
//  Created by Abdulrahman Alrifae on 1/12/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation

struct UserInfo: Codable {
    // get user first name and last name
    let firstName: String
    let lastName: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
    }
}

struct User: Codable {
    let user : UserInfo
}
