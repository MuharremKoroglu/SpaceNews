//
//  NewsDetailView.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 1.05.2023.
//

import SwiftUI

struct NewsDetailView: View {
    
    var title : String
    var newsUrl : String
    var imageURL : String
    var newsSite : String
    var summary : String
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            ScrollView {
                VStack{
                        Text(newsSite)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity,alignment: .center)
                            .multilineTextAlignment(.center)
                        Rectangle()
                            .frame(width: 250,height: 2,alignment: .leading)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .padding(.bottom,20)
                        AsyncImage(url: URL(string: imageURL)) { image in
                            image.resizable()
                                .frame(width: UIScreen.main.bounds.width - 30, height: 250)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(20)
                        }placeholder: {
                            ProgressView()
                        }.padding()
                        Text(title)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .bold()
                            .padding(20)
                            .frame(maxWidth: .infinity,alignment: .center)
                            .multilineTextAlignment(.center)
                        Text(summary)
                            .font(.callout)
                            .foregroundColor(.white)
                            .padding(10)
                            .frame(maxWidth: .infinity,alignment: .center)
                            .multilineTextAlignment(.center)
                    
                    Link(destination: URL(string: newsUrl)!){
                        HStack{
                            Text("Read More")
                                .font(.headline)
                                .foregroundColor(.white)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }.padding(20)
                            
                }
            }
            
        }.toolbarBackground(.hidden, for: .navigationBar)
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(title: "Lawmakers raise concerns about new plan to procure national security launch services", newsUrl: "https://spacenews.com/lawmakers-raise-concerns-about-new-plan-to-procure-national-security-launch-services/", imageURL: "https://i0.wp.com/spacenews.com/wp-content/uploads/2023/05/230328-F-JJ904-2523-scaled.jpg", newsSite: "SpaceNews", summary: "Leaders of the House Armed Services Committee are raising concerns about the Defense Department’s plan to procure space launch services beginning in 2025. They are questioning whether the proposed strategy, known as National Security Space Launch Phase 3,  gives new entrants a fair opportunity to compete for contracts.")
    }
}
