//
//  URLConstants.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 1.05.2023.
//

import Foundation


struct Constants {
    
    struct LocalPath {
        static let path = "news"
    }
    
    struct WebURL {
        static let baseURL = "https://api.spaceflightnewsapi.net/"
        static let baseURLWithPath = "\(baseURL)v3/articles"
    }

}
