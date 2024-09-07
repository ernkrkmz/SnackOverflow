//
//  NetworkManager.swift
//  Snackoverflow
//
//  Created by Eren Korkmaz on 4.09.2024.
//


import Alamofire
import Foundation

struct NetworkConfing {
    let baseUrl : String
}
enum NetworkPath: String {
    case users = "api/users"
    case login = "api/login"
    static let baseUrl : String = "https://reqres.in/"
}

protocol INetworkManager {
    func fetch<T: Codable>(path : String,method: HTTPMethod , type: T.Type) async ->T?
    func post<T: Codable, R:Encodable>(path : String ,model: R , type: T.Type) async -> T?
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
    
    func post<T: Codable, R:Encodable>(path : String ,model: R , type: T.Type) async -> T? {
        let jsonEncoder = JSONEncoder()
        
        guard let data = try? jsonEncoder.encode(model) else { return nil}
        guard let dataString = String(data: data, encoding: .utf8) else { return nil}
        let dataRequest = AF.request("\(config.baseUrl)\(NetworkPath.users.rawValue)", method: .post, parameters: convertToDictionary(text: dataString))
            .validate()
            .serializingDecodable(T.self)

        let result = await dataRequest.response
        
        guard let value = result.value else {
            print("Error \(String(describing: result.error))")
            return nil
        }
        
        return nil
    }
    
    func convertToDictionary(text: String) ->[String : Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: [] ) as? [String : Any]
            } catch {
                print("error")
            }
        }
        return nil
    }

}


