//
//  CountriesApp.swift
//  Countries
//
//  Created by Sena Kurtak on 5.08.2022.
//

import SwiftUI
import SDWebImage
import SDWebImageSVGCoder

@main

struct CountriesApp: App {
    //    let persistenceController = PersistenceController.shared
    init() {
        setUpDependencies()
        // Initialize SVGCoder
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
// Initialize SVGCoder
private extension CountriesApp {
    func setUpDependencies() {
        SDImageCodersManager.shared.addCoder(SDImageSVGCoder.shared)
    }
}
