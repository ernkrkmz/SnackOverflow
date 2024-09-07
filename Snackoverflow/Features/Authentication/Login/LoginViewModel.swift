//
//  LoginViewModel.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 4.09.2024.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    @Published var emailValue: String = "eve.holt@reqres.in"
    @Published var passwordValue: String = "cityslicka"
    
    @Published var token : String = ""

    let netvorkManager = NetworkManager(config: NetworkConfing(baseUrl: NetworkPath.baseUrl))
    
    func onLoginUser() async {
        guard !emailValue.isEmpty else { return }
        guard !passwordValue.isEmpty else { return }
        
        let response = await netvorkManager.post(path: "\(NetworkPath.baseUrl)\(NetworkPath.login.rawValue)", model: LoginRequest(email: emailValue, password: passwordValue), type: LoginResponse.self)
        
        token = response?.token ?? "token yok"
        
    }
    
}
