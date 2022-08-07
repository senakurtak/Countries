//
//  DetailCard.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import SwiftUI
import Alamofire
struct DetailCard: View {
    
    @ Environment (\.openURL) private  var openURL
    let url = URL(string: "https://www.wikidata.org/wiki/Q30")
    @State var favoriteCheck = false
    @State var color = Color.black.opacity(0.7)
    var body: some View {
        
        VStack{
            HStack{
                Text("Turkey")
                    .foregroundColor(.black.opacity(0.8))
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 350 , height: 50)
                Button(action:{
                    self.favoriteCheck.toggle()
                }){ Image(systemName: self.favoriteCheck ? "star" : "star.fill").foregroundColor(self.color)}
                Spacer()
            }
            
            Image("Turkey")
                .resizable()
                .frame(width: 400, height: 240)
                .padding(50)
            HStack{
                Text("Country Code:")
                    .font(.body.bold())
                    .foregroundColor(Color.black.opacity(0.8))
                Text("TR")
                    .font(.body.bold())
                    .foregroundColor(Color.black.opacity(0.8))
                Spacer()
            }
            .padding(20)
            HStack {
                Text("For More Information")
                    .font(.body.bold())
                    .padding(15)
                    .background(Color(red: (65/230), green: 75/230, blue: 180/230))
                    .foregroundColor(.white.opacity(0.70))
                    .onTapGesture {
                        openURL(url!)
                    }
                Spacer()
            }
            .padding(20)
            Spacer()

        }
        
        
        
    }
    
}

struct DetailCard_Previews: PreviewProvider {
    static var previews: some View {
        DetailCard()
    }
}
