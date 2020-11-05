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
}
