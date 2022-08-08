//
//  MainView.swift
//  Countries
//
//  Created by Sena Kurtak on 7.08.2022.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var savedStore : SavedStore = SavedStore()
        init() {
            UITabBar.appearance().backgroundColor = UIColor.gray
        }
        var body: some View {
            TabView{
                HomePage()
                    .tabItem{
                        Label("Home", systemImage: "house")
                            .padding(.top)
                    }
                Saved()
                    .tabItem{
                        Label("Saved", systemImage: "heart")
                            .padding(.top)
                    }
            }
            .accentColor(Color.white)
            .environmentObject(savedStore)
        }
    }
