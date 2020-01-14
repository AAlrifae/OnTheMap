//
//  TextFieldExtensions.swift
//  OnTheMap
//
//  Created by Abdulrahman Alrifae on 1/12/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController: UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
