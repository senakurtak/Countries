//
//  DetailCard.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import SwiftUI
import Alamofire
struct DetailCard: View {
    
    var code : String
    
    @State var countryDetailModel: CountryDetailModel = CountryDetailModel()
    
    @ Environment (\.openURL) private  var openURL
    
    let url = URL(string: "https://www.wikidata.org/wiki/Q30")
    
    @State var favoriteCheck = false
    @State var color = Color.black.opacity(0.7)
    @EnvironmentObject var favorites : Favorites
    var body: some View {
        
   
        
        
        VStack{
            HStack{
                

                
                AsyncImage(url: URL(string: "https://jpeg.org/images/jpeg2000-home.jpg"))

                    .frame(width: 400, height: 240)
                    .padding(50)
                    
                
                
                Text(countryDetailModel.data.name)
                    .foregroundColor(.black.opacity(0.8))
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 350 , height: 50)
                Button(action:{
                    self.favoriteCheck.toggle()
                }){ Image(systemName: self.favoriteCheck ? "star" : "star.fill").foregroundColor(self.color)}
                Spacer()
            }
            
          
            
  
            
            HStack{
                Text("Country Code:")
                    .font(.body.bold())
                    .foregroundColor(Color.black.opacity(0.8))
                Text(code)
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
                        openURL( URL(string: "https://www.wikidata.org/wiki/\(countryDetailModel.data.wikiDataId)")!)
                    }
                Spacer()
            }
            .padding(20)
            Spacer()

        }
        .onAppear(){
           
            let countryRepo = CountryRepository()
            countryRepo.getCountryDetail(code: code){data in
                
               countryDetailModel = data
            }
            
        }
        
        
        
    }
    
}

