//
//  NetworkManager.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 4.09.2024.
//


import Alamofire

struct NetworkConfing {
    let baseUrl : String
}

protocol INetworkManager {
    func fetch<T: Codable>(path : String,method: HTTPMethod , type: T.Type) async ->T?
    
    var config: NetworkConfing { get set }
}

extension NetworkManager{
    static let netvorkManager: INetworkManager = NetworkManager(config: NetworkConfing(baseUrl: NetworkPath.baseUrl))
}

class NetworkManager : INetworkManager{
    internal var config: NetworkConfing
    
    
    init(config: NetworkConfing) {
        self.config = config
    }
    
    func fetch<T: Codable>(path : String ,method: HTTPMethod , type: T.Type) async -> T?{
        let dataRequest = AF.request("\(config.baseUrl)\(NetworkPath.users.rawValue)", method: method).validate().serializingDecodable(T.self)
        
        let result = await dataRequest.response
        
        guard let value = result.value else {
            print("Error fetch!")
            return nil
        }
        
        return result.value
    }
}

enum NetworkPath: String {
    case users = "api/users"
    
    static let baseUrl : String = "https://reqres.in/"
}
