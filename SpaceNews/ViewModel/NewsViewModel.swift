//
//  NewsViewModel.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 1.05.2023.
//

import Foundation


class NewsViewModel : ObservableObject{

    @Published var news = [NewsListViewModel]()
    
    private let service : NetworkService
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func fetchNewsData () async {
        
        var resource : String = ""
        
        if service.type == "WebService" {
            resource = Constants.WebURL.baseURLWithPath
        }else {
            resource = Constants.LocalPath.path
        }
        
        do{
            let news =  try await service.getNewsData(resource)
            DispatchQueue.main.async {
                self.news = news.map(NewsListViewModel.init)
                
          }
        }catch{
            print(error)
        }
        
    }

}

struct NewsListViewModel {
    
    let news : News
    
    var id : Int {
        news.id
    }
    var title : String {
        news.title
    }
    var newsUrl : String {
        news.url
    }
    var imageURL : String {
        news.imageUrl
    }
    var newsSite : String {
        news.newsSite
    }
    var summary : String {
        news.summary
    }
    var publishedAt : String {
        news.formattedPublishedAt
    }

}
