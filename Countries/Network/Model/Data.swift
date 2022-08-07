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

















//struct CountriesBigData :Decodable, Hashable {
//    let data: [Countries]
//    let links: [Links]
//    let metadata: Metadata
//}
//
//struct Links :  Codable, Hashable {
//    var rel : String = ""
//    var href : String = ""
//}
//
//struct Countries : Codable, Hashable {
//    var code : String = ""
//    var currencyCodes : [String] = [""]
//    var name : String = ""
//    var wikiDataId : String = ""
//}
//
//struct Metadata : Codable, Hashable {
//    var currentOffset : Int = 0
//    var totalCount : Int = 0
//}
//
