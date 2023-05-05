//
//  LocalService.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 4.05.2023.
//

import Foundation

class LocalService : NetworkService {
    
    var type: String = "LocalService"
    
    func getNewsData (_ resource : String) async throws -> [News] {
        
        guard let path = Bundle.main.path(forResource: resource, ofType: "json") else{
            fatalError("Resource not found!")
        }
        
        let data = try Data(contentsOf: URL(filePath: path))
        
        return try JSONDecoder().decode([News].self, from: data)
    }
    
}
