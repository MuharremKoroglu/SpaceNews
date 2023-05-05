//
//  NetworkService.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 4.05.2023.
//

import Foundation


protocol NetworkService {
    func getNewsData (_ resource : String) async throws -> [News]
    var type : String {get}
}
