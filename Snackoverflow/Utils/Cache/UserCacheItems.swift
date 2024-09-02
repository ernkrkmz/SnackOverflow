//
//  UserCacheItems.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 3.09.2024.
//

import Foundation

enum UserCacheKeys : String {
    case onboard = "onboard"
    
}
protocol UserCacheProtocol {
    func read(key: UserCacheKeys) -> String
    func save(key: UserCacheKeys, value: String)
    func remove(key: UserCacheKeys) -> Void
    
    
}

extension UserCacheProtocol {
    func read(key: UserCacheKeys) -> String {
        UserDefaults.standard.removeObject(forKey: key.rawValue)

        guard let value = UserDefaults.standard.value(forKey: key.rawValue) as? String else { return "" }
        
        return value
    }
    func save(key: UserCacheKeys, value: String){
        UserDefaults.standard.set(value, forKey: key.rawValue)
        
    }
    func remove(key: UserCacheKeys){
        UserDefaults.standard.removeObject(forKey: key.rawValue)
        
    }
    
}

struct UserDefaultCache : UserCacheProtocol { }

