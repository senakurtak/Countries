//
//  HomeTestPage.swift
//  Countries
//
//  Created by Sena Kurtak on 8.08.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct HomeTestPage: View {
    var body: some View {
        
    
        VStack(spacing: 50) {
            WebImage(url: URL(string: ("https://upload.wikimedia.org/wikipedia/commons/0/00/Flag_of_the_Vatican_City.svg") ))
            .resizable()
            .scaledToFit()
            .modifier(RoundedEdge(width: 1, color: .black, cornerRadius: 0))
        }
    
    }
}

struct HomeTestPage_Previews: PreviewProvider {
    static var previews: some View {
        HomeTestPage()
    }
}
