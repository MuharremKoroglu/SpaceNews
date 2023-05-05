//
//  ContentView.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 1.05.2023.
//

import SwiftUI

struct NewsHomeView: View {
    
    
    @ObservedObject var newsViewModel = NewsViewModel(service: LocalService())
    @State private var opacity = 0.0
    
    var body: some View {
        NavigationStack {
            ZStack{
                Image("background")
                    .resizable()
                    .ignoresSafeArea()

                VStack {
                    Text("Space News")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .foregroundColor(.white)
                        .padding()
                        .font(.largeTitle)
                        .bold()
                    ScrollView(.vertical){
                        ForEach(newsViewModel.news, id: \.id) { news in
                            NavigationLink {
                                NewsDetailView(title: news.title, newsUrl: news.newsUrl, imageURL: news.imageURL, newsSite: news.newsSite, summary: news.summary)
                            } label: {
                                NewsCard(title: news.title, image: news.imageURL,publishedDate: news.publishedAt)
                                    .opacity(opacity)
                            }
                            
                        }
                    }
                }
            }
        }.task {
            await newsViewModel.fetchNewsData()
            withAnimation(.easeIn(duration: 1.2)) {
                opacity = 1.0
            }
        }
        .refreshable {
            await newsViewModel.fetchNewsData()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsHomeView()
    }
}
