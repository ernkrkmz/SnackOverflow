//
//  LocalKeys.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 1.09.2024.
//

import SwiftUI

struct LocalKeys{
    enum Auth: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case custom = "signUpWithEmail"
    }
    
    enum Buttons : String {
        case getStarted = "getStarted"
    }
}

extension String {
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}

