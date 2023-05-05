//
//  NewsView.swift
//  SpaceNews
//
//  Created by Muharrem Köroğlu on 1.05.2023.
//

import SwiftUI

struct NewsCard: View {
    
    let title : String
    let image : String
    let publishedDate : String
   
    var body: some View {
        ZStack(alignment: .bottom){
            AsyncImage(url: URL(string: image)) { image in
                image.resizable()
                    .frame(width: UIScreen.main.bounds.width - 20, height: 250)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    
            }placeholder: {
                ProgressView()
            }.padding()
            VStack(alignment: .leading){
                Text(title)
                    .font(.system(size: 20))
                    .frame(width: UIScreen.main.bounds.width - 50,alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .bold()
                    .padding(15)
                
                HStack{
                    Image(systemName: "clock")
                        .foregroundColor(.white)
                        .padding(.leading,15)
                        .padding(.bottom,15)
                    Text(publishedDate)
                        .foregroundColor(.white)
                        .padding(.bottom,15)
                }
            }.background(RoundedRectangle(cornerRadius: 20).fill(.ultraThinMaterial))
                .padding()
                .frame(alignment: .leading)
            
        }.shadow(radius: 10)
            .frame(width: UIScreen.main.bounds.width - 20,height: 250)
            .padding(10)
            .onAppear(){
                
            }
            
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCard(title: "SpaceX Falcon Heavy launches first ViaSat-3 satellite", image: "https://i0.wp.com/spacenews.com/wp-content/uploads/2023/04/VS3-Takeoff-scaled.jpg",publishedDate: "01-01-2023 : 9:48 ")
    }
}
