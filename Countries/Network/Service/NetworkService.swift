//
//  NetworkService.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import Foundation
import Alamofire

class CountryRepository {
    func getCountries(completion:@escaping ([Data]) -> Void){
        let request = AF.request("https://wft-geo-db.p.rapidapi.com/v1/geo/countries")
        request.responseDecodable(of: [Data].self){response in
            completion(response.value!)
        }
    }
}

//class CountryRepository {
//    func getCountriesData(completion:@escaping ([CountriesDataModel]) -> Void){
//        let request = AF.request("https://wft-geo-db.p.rapidapi.com/v1/geo/countries")
//        request.responseDecodable(of: [CountriesDataModel].self){response in
//            completion(response.value!)
//        }
//    }
//}

