//
//  UserData.swift
//  parser
//
//  Created by Artem Pavlov on 03.11.2020.
//

import Foundation
import UIKit

struct UserData: Decodable {
    let name: String
    let username: String
    let email: String
    let id: Int
//    let address : [Address]
}


struct Address: Decodable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
}
