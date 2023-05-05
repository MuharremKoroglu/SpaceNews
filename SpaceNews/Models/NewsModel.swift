//
//  NewsModel.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 1.05.2023.
//

import Foundation

// MARK: - NewsElement
struct News : Codable{
    
    let id: Int
    let title: String
    let url: String
    let imageUrl: String
    let newsSite : String
    let summary : String
    
    private let publishedAt : String
    var formattedPublishedAt : String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        if let date = dateFormatter.date(from: self.publishedAt){
            let originalDateFormatter = DateFormatter()
            originalDateFormatter.dateFormat = "dd MMM yyyy, HH:mm:ss"
            return originalDateFormatter.string(from: date)
        }else{
            return self.publishedAt
        }
    }

}

