//
//  HomePage.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import SwiftUI
import Alamofire

struct HomePage: View {
    @State var CountriesData : [Data] = []
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Countries")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black.opacity(0.8))
                }
                HStack{
                    NavigationLink(destination: DetailCard()){
                        //            ForEach(CountriesData, id:\.self){item in
                        //                Text(item.name)
                        Text("Country from URL")
                            .font(.body)
                            .foregroundColor(.black.opacity(0.7))
                            .frame(width: 320, height: 50)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1.2))
                    }
                }
            }
        }
        //            }
        //        }.onAppear(){
        //            let countryRepo = CountryRepository()
        //            countryRepo.getCountries(){
        //                data in CountriesData = data
    }
}
