//
//  HomePage.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import SwiftUI
import Alamofire

struct HomePage: View {
    
    @EnvironmentObject var savedStore : SavedStore
    @State var countriesData : CountriesDataModel = CountriesDataModel()
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
                            .padding()
                            .font(.body)
                            .foregroundColor(.black.opacity(0.7))
                        Spacer()
                        Button(action:{
                            let checkStatus = savedStore.savedCountries.contains(item.code)
                            
                            if(checkStatus){
                                if let index = savedStore.savedCountries.firstIndex(of: item.code) {
                                    savedStore.savedCountries.remove(at: index)
                                }
                            }
                            else{
                                savedStore.savedCountries.append(item.code)
                            }
                        }){
                            let checkStatus = savedStore.savedCountries.contains(item.code)
                            Image(systemName: checkStatus ? "star.fill" : "star").foregroundColor(.black.opacity(0.7)).padding(10)
                        }
                    }
                    .frame(width: 320, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1.2))
                }
            }
            .onAppear(){
                let countryRepo = CountryRepository()
                countryRepo.getCountries(){data in
                    
                    countriesData = data
                }
            }
        }            .background(Color(red: (221/230), green: (221/230), blue: (221/230)))
            .environmentObject(favorites)
    }
    
}
