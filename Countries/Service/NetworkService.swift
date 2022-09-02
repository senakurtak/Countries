//
//  NetworkService.swift
//  Countries
//
//  Created by Sena Kurtak on 6.08.2022.
//

import Foundation
import Alamofire

class CountryRepository {
    func getCountries(completion:@escaping (CountriesDataModel) -> Void){
        let headers: HTTPHeaders = ["X-RapidAPI-Key": "cb98f696afmsh91bde0afd3313cbp109df6jsn9c1d2cfe5f6f"]
        let request = AF.request("https://wft-geo-db.p.rapidapi.com/v1/geo/countries", headers: headers)
        request.responseDecodable(of: CountriesDataModel.self){response in
            completion(response.value ?? CountriesDataModel())
        }
    }
    
    func getCountryDetail(code:String, completion:@escaping (CountryDetailModel) -> Void){
        let headers: HTTPHeaders = ["X-RapidAPI-Key": "cb98f696afmsh91bde0afd3313cbp109df6jsn9c1d2cfe5f6f"]
        let request = AF.request("https://wft-geo-db.p.rapidapi.com/v1/geo/countries/\(code)", headers: headers)
        request.responseDecodable(of: CountryDetailModel.self){data in
            completion(data.value ?? CountryDetailModel())
        }
    }
    
    func getTime(code:String, completion:@escaping (CountryTimeModel) -> Void){
        let request = AF.request("https://restcountries.com/v2/alpha/\(code)")
        request.responseDecodable(of: CountryTimeModel.self){data in
            completion(data.value ?? CountryTimeModel())
        }
    }
}
