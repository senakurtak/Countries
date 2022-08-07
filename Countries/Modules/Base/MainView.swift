//
//  MainView.swift
//  Countries
//
//  Created by Sena Kurtak on 7.08.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {

        TabView{
            HomePage()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
           Saved()
                .tabItem{
                    Label("Saved", systemImage: "heart")
                }

        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
