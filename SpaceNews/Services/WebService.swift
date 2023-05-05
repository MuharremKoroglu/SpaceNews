//
//  WebService.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 1.05.2023.
//

import Foundation


class WebService : NetworkService {

    var type: String = "WebService"

    func getNewsData (_ resource : String) async throws -> [News] {
        
        guard let url = URL(string: resource) else {
            throw downloadError.invalidURL
        }
        
        let (data , response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
            throw downloadError.invalidServiceResponse
        }
        
        return try JSONDecoder().decode([News].self, from: data)
    }
 
}

enum downloadError : Error {
    case invalidURL
    case invalidServiceResponse
}
