//
//  LoginModel.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 4.09.2024.
//

import Foundation
struct LoginRequest: Encodable {
    let email, password: String
}

struct LoginResponse: Codable {
    let token: String
}
