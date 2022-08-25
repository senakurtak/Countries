//
//  CountryDetailModel.swift
//  Countries
//
//  Created by Sena Kurtak on 8.08.2022.
//

import Foundation


struct CountryDetailModel : Codable {
    var data: DetailClass = DetailClass()
}


struct DetailClass : Codable {
    //var code : String? = ""
    //var callingCode : String = ""
//    var capital: String = ""
   // var currencyCodes: [String] = []
    var flagImageUri: String = ""
    var name: String = ""
    //var numRegions: Int = 0
    var wikiDataId: String = ""
}

