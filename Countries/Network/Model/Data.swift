//
//  Data.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import Foundation
struct Data: Codable, Hashable {
    var name : String = ""
    var code : String = ""
    var currencyCodes : [String] = []
    var wikiDataId : String = ""
}
