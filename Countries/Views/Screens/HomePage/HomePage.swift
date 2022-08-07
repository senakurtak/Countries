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
        VStack{
            Text("Data Screen")
            ForEach(CountriesData, id:\.self){item in Text(item.name)
            }
        }.onAppear(){
            let countryRepo = CountryRepository()
            countryRepo.getCountries(){
                data in CountriesData = data}
        }
    }
}
