//
//  SessionResponse.swift
//  OnTheMap
//
//  Created by Abdulrahman Alrifae on 1/12/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation

struct Session: Codable {
    let id: String
}

struct Account: Codable {
    let registered: Bool
    let key: String
}

struct SessionResponse: Codable {
    let account: Account
    let session: Session
}

