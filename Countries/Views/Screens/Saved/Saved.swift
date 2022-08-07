
//  Saved.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import SwiftUI

struct Saved: View {
    
    @State var favoriteCheck = false

    var body: some View {
        VStack{
            HStack{
                Text("Countries")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.8))
            }
            //            ForEach(CountriesData, id:\.self){item in
            //                Text(item.name)
            HStack{
                Text("Saved country from URL")
                    .font(.body)
                    .padding(10)
                Spacer()
                Button(action:{
                    self.favoriteCheck.toggle()
                }){ Image(systemName: self.favoriteCheck ? "star" : "star.fill").foregroundColor(.black.opacity(0.7)).padding(10)}
            }
            .foregroundColor(.black.opacity(0.7))
            .frame(width: 350, height: 50)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1.2))
            Spacer()
        }
        
    }
}


struct Saved_Previews: PreviewProvider {
    static var previews: some View {
        Saved()
    }
}

