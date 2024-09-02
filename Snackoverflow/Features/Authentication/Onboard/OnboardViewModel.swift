//
//  OnboardViewModel.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 3.09.2024.
//

import Foundation
final class OnboardViewModel: ObservableObject {
    
    @Published var currentIndex : Int = 0
    @Published var isHomeRedirect : Bool = false
    
    private let cache = UserDefaultCache()
    
    
    func isUserFirstLogin() -> Bool {
        
        return !cache.read(key: .onboard).isEmpty
    }
    func checkUserFirsthLogin() {
//        removeFirstLogin()
        guard !isUserFirstLogin() else {
            updateCacheFirstLogin()
            return
        }
        redirectToHome()
        
    }
    func saveUserLoginAndRedirect() {
        updateCacheFirstLogin()
        redirectToHome()
    }
    private func redirectToHome() {
        isHomeRedirect = true
    }
    private func updateCacheFirstLogin() {
        cache.save(key: .onboard, value: "okay")
    }
    func removeFirstLogin() {
        cache.remove(key: .onboard)
    }
}
