//
//  HomePage.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import SwiftUI
import Alamofire

struct HomePage: View {
    @State var countriesData : CountriesDataModel = CountriesDataModel()
    @State var favoriteCheck = false
    @State var datas : [Data] = []
    @StateObject var favorites = Favorites()
    var body: some View {
        NavigationView{
            VStack{
                
                Text("Countries")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.8))
                
                
                
                
                ForEach(countriesData.data, id:\.self){item in
                    
                    NavigationLink(destination: DetailCard(code: item.code)){
                        Text(item.name)
                            .font(.body)
                            .foregroundColor(.black.opacity(0.7))
                            .frame(width: 320, height: 50)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1.2))
                        
                    }
                }
                
                
            }
            .onAppear(){
                let countryRepo = CountryRepository()
                countryRepo.getCountries(){data in
                    
                    countriesData = data
                }
                
            }
        }
        .environmentObject(favorites)
        
    }
}
