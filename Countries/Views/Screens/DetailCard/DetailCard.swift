//
//  DetailCard.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import SwiftUI
import SDWebImageSwiftUI
import Alamofire

struct DetailCard: View {
    
    @EnvironmentObject var savedStore : SavedStore
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
                WebImage(url: URL(string: countryDetailModel.data.flagImageUri))
                    .resizable()
                    .scaledToFit()
                    .modifier(RoundedEdge(width: 1, color: .black, cornerRadius: 0))
                    .frame(width: 400, height: 200)
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
                    .padding(5)
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
        .navigationTitle(countryDetailModel.data.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action:{
            let checkStatus = savedStore.savedCountries.contains(code)
            
            if(checkStatus){
                if let index = savedStore.savedCountries.firstIndex(of: code) {
                    savedStore.savedCountries.remove(at: index)
                }
            }
            else{
                savedStore.savedCountries.append(code)
            }
        }){
            let checkStatus = savedStore.savedCountries.contains(code)
            Image(systemName: checkStatus ? "star.fill" : "star").foregroundColor(.black.opacity(0.7)).padding(10)
        }
        )
    }
}
struct RoundedEdge: ViewModifier {
    let width: CGFloat
    let color: Color
    let cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        content.cornerRadius(cornerRadius - width)
            .padding(width)
            .background(color)
            .cornerRadius(cornerRadius)
    }
}
