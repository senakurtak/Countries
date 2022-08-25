//
//  DataModel.swift
//  Countries
//
//  Created by Sena Kurtak on 7.08.2022.
//

import Foundation
struct CountriesDataModel:  Codable {
    var data : [Data] = []
    var links : [Link] = []
    var metadata : Metadata = Metadata()
}
