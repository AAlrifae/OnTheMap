//
//  StudentLocation.swift
//  OnTheMap
//
//  Created by Abdulrahman Alrifae on 1/12/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation

struct Results: Codable {
    let results: [StudentLocation]
}

struct StudentLocation: Codable {
    let firstName: String
    let lastName: String
    let longitude: Double
    let latitude: Double
    let mapString: String
    let mediaURL: String
    let uniqueKey: String
    let objectId: String
}
